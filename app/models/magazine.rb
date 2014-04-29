class Magazine < ActiveRecord::Base
  validates :name, presence: true
  validates :issue, presence: true
end
