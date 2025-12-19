class Person < ApplicationRecord
  validates :address, acceptance: { message: "Must Be Enter" }

  def invited?
    invitation_sent_at.present?
  end
end

# class Person
#   include ActiveModel::API
# end
