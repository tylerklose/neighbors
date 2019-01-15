# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'family_members/index', type: :view do
  before(:each) do
    assign(:family_members, [
             FamilyMember.create!(
               first_name: 'First Name',
               last_name: 'Last Name',
               age: 2,
               working: false,
               family: nil,
               relationship: nil
             ),
             FamilyMember.create!(
               first_name: 'First Name',
               last_name: 'Last Name',
               age: 2,
               working: false,
               family: nil,
               relationship: nil
             )
           ])
  end

  it 'renders a list of family_members' do
    render
    assert_select 'tr>td', text: 'First Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Last Name'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
