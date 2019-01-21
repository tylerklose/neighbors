# frozen_string_literal: true

##
# :nodoc:
#
class FamilyMembersController < ApplicationController
  before_action :set_family
  before_action :set_family_member, only: %i[show edit update destroy]

  # GET /family_members
  def index
    @additional_family_members = @family.additional_family_members
  end

  # GET /family_members/1
  def show; end

  # GET /family_members/new
  def new
    @family_member = FamilyMember.new
  end

  # GET /family_members/1/edit
  def edit; end

  # POST /family_members
  def create
    @family_member = FamilyMember.new(family_member_params)
    @family_member.working = family_member_params[:working] == '1'
    @family_member.type = 'AdditionalFamilyMember'

    respond_to do |format|
      if @family_member.save
        format.html { redirect_to family_family_members_path(@family), notice: 'Family member was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /family_members/1
  def update
    respond_to do |format|
      if @family_member.update(family_member_params)
        format.html { redirect_to family_family_members_path(family_id: @family.id), notice: 'Family member was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /family_members/1
  def destroy
    @family_member.destroy
    respond_to do |format|
      format.html { redirect_to family_family_members_url, notice: 'Family member was successfully destroyed.' }
    end
  end

  private

  ##
  # Whitelist the parameters we expect to receive from a request to this controller.
  #
  def family_member_params
    params.require(:family_member).permit(:first_name, :last_name, :age, :working, :family_id, :relationship_id)
  end

  def set_family
    @family = Family.find(params[:family_id])
  end

  def set_family_member
    @family_member = FamilyMember.find(params[:id])
  end
end
