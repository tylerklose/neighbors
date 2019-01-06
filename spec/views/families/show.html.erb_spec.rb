# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'families/show', type: :view do
  before(:each) do
    @family = assign(:family, Family.create!(
                                home_address: '',
                                email_address: 'Email Address',
                                phone_number: 'Phone Number'
                              ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Email Address/)
    expect(rendered).to match(/Phone Number/)
  end
end
