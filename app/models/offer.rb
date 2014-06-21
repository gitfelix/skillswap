class Offer < ActiveRecord::Base
	belongs_to :user
	belongs_to :skill
  attr_accessor :skill_name
end
