# frozen_string_literal: true

##
# :nodoc:
#
class FamiliesController < ApplicationController
  before_action :set_family, only: %i[show edit update destroy]

  # GET /families
  def index
    # TODO: Make sure to order the families by last name of primary member
    @families = Family.includes(:primary_family_member).sort_by { |family| family.primary_family_member.last_name }
  end

  # GET /families/1
  def show; end

  # GET /families/new
  def new
    @family = Family.new
    @family.build_primary_family_member
  end

  # GET /families/1/edit
  def edit; end

  # POST /families
  def create
    @family = Family.new(family_params)

    respond_to do |format|
      if @family.save
        format.html { redirect_to families_url, notice: 'Family was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /families/1
  def update
    respond_to do |format|
      if @family.update(family_params)
        format.html { redirect_to @family, notice: 'Family was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /families/1
  def destroy
    @family.destroy
    respond_to do |format|
      format.html { redirect_to families_url, notice: 'Family was successfully destroyed.' }
    end
  end

  private

  ##
  # Whitelist the parameters we expect to receive from a request to this controller.
  #
  def family_params
    params.require(:family).permit(:home_address, :email_address, :phone_number, primary_family_member_attributes: %i[type first_name last_name age])
  end

  def set_family
    @family = Family.find(params[:id])
  end
end
