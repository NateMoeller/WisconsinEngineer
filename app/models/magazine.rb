class Magazine < ActiveRecord::Base
  has_many :articles, dependent: :destroy
  validates :name, presence: true
  validates :issue, presence: true
end
