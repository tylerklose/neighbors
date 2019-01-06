# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'families/index', type: :view do
  before(:each) do
    assign(:families, [
             Family.create!(
               home_address: '',
               email_address: 'Email Address',
               phone_number: 'Phone Number'
             ),
             Family.create!(
               home_address: '',
               email_address: 'Email Address',
               phone_number: 'Phone Number'
             )
           ])
  end

  it 'renders a list of families' do
    render
    assert_select 'tr>td', text: ''.to_s, count: 2
    assert_select 'tr>td', text: 'Email Address'.to_s, count: 2
    assert_select 'tr>td', text: 'Phone Number'.to_s, count: 2
  end
end
