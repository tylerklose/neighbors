# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'families/index', type: :view do
  before(:each) do
    assign(:families, [
             Family.create!(
               primary_member_first_name: 'Primary Member First Name',
               primary_member_last_name: 'Primary Member Last Name',
               primary_member_age: 2,
               home_address: 'Home Address',
               email_address: 'Email Address',
               phone_number: 'Phone Number'
             ),
             Family.create!(
               primary_member_first_name: 'Primary Member First Name',
               primary_member_last_name: 'Primary Member Last Name',
               primary_member_age: 2,
               home_address: 'Home Address',
               email_address: 'Email Address',
               phone_number: 'Phone Number'
             )
           ])
  end

  it 'renders a list of families' do
    render
    assert_select 'tr>td', text: 'Primary Member First Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Primary Member Last Name'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 'Home Address'.to_s, count: 2
    assert_select 'tr>td', text: 'Email Address'.to_s, count: 2
    assert_select 'tr>td', text: 'Phone Number'.to_s, count: 2
  end
end
