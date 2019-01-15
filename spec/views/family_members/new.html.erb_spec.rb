# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'family_members/new', type: :view do
  before(:each) do
    assign(:family_member, FamilyMember.new(
                             first_name: 'MyString',
                             last_name: 'MyString',
                             age: 1,
                             working: false,
                             family: nil,
                             relationship: nil
                           ))
  end

  it 'renders new family_member form' do
    render

    assert_select 'form[action=?][method=?]', family_members_path, 'post' do
      assert_select 'input[name=?]', 'family_member[first_name]'

      assert_select 'input[name=?]', 'family_member[last_name]'

      assert_select 'input[name=?]', 'family_member[age]'

      assert_select 'input[name=?]', 'family_member[working]'

      assert_select 'input[name=?]', 'family_member[family_id]'

      assert_select 'input[name=?]', 'family_member[relationship_id]'
    end
  end
end
