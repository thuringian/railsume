class Skill < ActiveRecord::Base
	validates :title, presence: true                    
end
