# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'families/show', type: :view do
  before(:each) do
    @family = assign(:family, Family.create!(
                                primary_member_first_name: 'Primary Member First Name',
                                primary_member_last_name: 'Primary Member Last Name',
                                primary_member_age: 2,
                                home_address: 'Home Address',
                                email_address: 'Email Address',
                                phone_number: 'Phone Number'
                              ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Primary Member First Name/)
    expect(rendered).to match(/Primary Member Last Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Home Address/)
    expect(rendered).to match(/Email Address/)
    expect(rendered).to match(/Phone Number/)
  end
end
