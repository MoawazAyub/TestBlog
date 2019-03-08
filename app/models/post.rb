class Post < ApplicationRecord

	has_many :comments, dependent: :destroy
	validates :title, :body , presence: true
	validates :title, :length => { :minimum => 2 }
	scope :myasd, -> { where(:title => 'asd') }
end
