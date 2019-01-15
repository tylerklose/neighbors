require 'rails_helper'

RSpec.describe "families/edit", type: :view do
  before(:each) do
    @family = assign(:family, Family.create!(
      :primary_member_first_name => "MyString",
      :primary_member_last_name => "MyString",
      :primary_member_age => 1,
      :home_address => "MyString",
      :email_address => "MyString",
      :phone_number => "MyString"
    ))
  end

  it "renders the edit family form" do
    render

    assert_select "form[action=?][method=?]", family_path(@family), "post" do

      assert_select "input[name=?]", "family[primary_member_first_name]"

      assert_select "input[name=?]", "family[primary_member_last_name]"

      assert_select "input[name=?]", "family[primary_member_age]"

      assert_select "input[name=?]", "family[home_address]"

      assert_select "input[name=?]", "family[email_address]"

      assert_select "input[name=?]", "family[phone_number]"
    end
  end
end
