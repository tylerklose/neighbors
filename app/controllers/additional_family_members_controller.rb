# frozen_string_literal: true

##
# Controller for processing actions related to Additional Family Members
#
class AdditionalFamilyMembersController < FamilyMembersController
  before_action :set_additional_family_member, only: %i[show edit update destroy]

  # GET /additional_family_members
  def index
    @additional_family_members = AdditionalFamilyMember.all
  end

  # GET /additional_family_members/1
  def show; end

  # GET /additional_family_members/new
  def new
    @additional_family_member = AdditionalFamilyMember.new
  end

  # GET /additional_family_members/1/edit
  def edit; end

  # POST /additional_family_members
  def create
    @additional_family_member = AdditionalFamilyMember.new(additional_family_member_params)

    respond_to do |format|
      if @additional_family_member.save
        format.html { redirect_to family_family_member_path(id: @additional_family_member.id), notice: 'Additional family member was successfully created.' }
      else
        format.html { render 'family_members/new', locals: { family_member: @additional_family_member } }
      end
    end
  end

  # PATCH/PUT /additional_family_members/1
  def update
    respond_to do |format|
      if @additional_family_member.update(additional_family_member_params)
        format.html { redirect_to family_family_member_path(family_id: @family.id), notice: 'Additional family member was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /additional_family_members/1
  def destroy
    @additional_family_member.destroy
    respond_to do |format|
      format.html { redirect_to family_family_members_path(family_id: @family.id), notice: 'Additional family member was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_additional_family_member
    @additional_family_member = AdditionalFamilyMember.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def additional_family_member_params
    params.require(:additional_family_member).permit(:first_name, :last_name, :age, :working, :family_id, :relationship_id, :type)
  end
end
