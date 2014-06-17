# == Schema Information
#
# Table name: refinery_user_plugins
#
#  id       :integer          not null, primary key
#  user_id  :integer
#  name     :string(255)
#  position :integer
#

module Refinery
  class UserPlugin < Refinery::Core::BaseModel

    belongs_to :user
    attr_accessible :user_id, :name, :position

  end
end
