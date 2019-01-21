# frozen_string_literal: true

##
# :nodoc:
#
module FamiliesHelper
  def cancel_link(family)
    text = if family.new_record?
             'Back to all families'
           else
             "Back to the #{family.name} family"
           end

    link_to(text, families_path)
  end
end
