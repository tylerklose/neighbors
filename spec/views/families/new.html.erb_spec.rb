# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'families/new', type: :view do
  before(:each) do
    assign(:family, Family.new(
                      home_address: '',
                      email_address: 'MyString',
                      phone_number: 'MyString'
                    ))
  end

  it 'renders new family form' do
    render

    assert_select 'form[action=?][method=?]', families_path, 'post' do
      assert_select 'input[name=?]', 'family[home_address]'

      assert_select 'input[name=?]', 'family[email_address]'

      assert_select 'input[name=?]', 'family[phone_number]'
    end
  end
end
