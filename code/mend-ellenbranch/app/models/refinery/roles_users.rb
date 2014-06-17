# == Schema Information
#
# Table name: refinery_roles_users
#
#  user_id :integer
#  role_id :integer
#

module Refinery
  class RolesUsers < Refinery::Core::BaseModel

    belongs_to :role
    belongs_to :user

  end
end
