require 'rails_helper'

RSpec.describe "families/new", type: :view do
  before(:each) do
    assign(:family, Family.new(
      :primary_member_first_name => "MyString",
      :primary_member_last_name => "MyString",
      :primary_member_age => 1,
      :home_address => "MyString",
      :email_address => "MyString",
      :phone_number => "MyString"
    ))
  end

  it "renders new family form" do
    render

    assert_select "form[action=?][method=?]", families_path, "post" do

      assert_select "input[name=?]", "family[primary_member_first_name]"

      assert_select "input[name=?]", "family[primary_member_last_name]"

      assert_select "input[name=?]", "family[primary_member_age]"

      assert_select "input[name=?]", "family[home_address]"

      assert_select "input[name=?]", "family[email_address]"

      assert_select "input[name=?]", "family[phone_number]"
    end
  end
end
