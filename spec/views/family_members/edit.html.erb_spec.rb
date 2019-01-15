# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'family_members/edit', type: :view do
  before(:each) do
    @family_member = assign(:family_member, FamilyMember.create!(
                                              first_name: 'MyString',
                                              last_name: 'MyString',
                                              age: 1,
                                              working: false,
                                              family: nil,
                                              relationship: nil
                                            ))
  end

  it 'renders the edit family_member form' do
    render

    assert_select 'form[action=?][method=?]', family_member_path(@family_member), 'post' do
      assert_select 'input[name=?]', 'family_member[first_name]'

      assert_select 'input[name=?]', 'family_member[last_name]'

      assert_select 'input[name=?]', 'family_member[age]'

      assert_select 'input[name=?]', 'family_member[working]'

      assert_select 'input[name=?]', 'family_member[family_id]'

      assert_select 'input[name=?]', 'family_member[relationship_id]'
    end
  end
end
