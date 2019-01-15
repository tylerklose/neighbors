# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'family_members/show', type: :view do
  before(:each) do
    @family_member = assign(:family_member, FamilyMember.create!(
                                              first_name: 'First Name',
                                              last_name: 'Last Name',
                                              age: 2,
                                              working: false,
                                              family: nil,
                                              relationship: nil
                                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
