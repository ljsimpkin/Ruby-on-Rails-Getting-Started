class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end

class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
