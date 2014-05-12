class Magazine < ActiveRecord::Base
  has_many :articles, dependent: :destroy
  default_scope -> { order('created_at DESC') }
  validates :name, presence: true
  validates :issue, presence: true
end
