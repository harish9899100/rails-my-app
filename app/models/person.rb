class Person < ApplicationRecord
  validates :name, presence: true
end

# class Person
#   include ActiveModel::API
# end
