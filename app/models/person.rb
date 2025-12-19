class Person < ApplicationRecord
  validates :email, confirmation: true
  # validates :email_confirmation, presence: true
end
#   validates :address, acceptance: { message: "Must Be Enter" }

#   def invited?
#     invitation_sent_at.present?
#   end
# end

# class Person
#   include ActiveModel::API
# end
