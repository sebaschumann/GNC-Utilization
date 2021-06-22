class Client < ApplicationRecord
paginates_per 4
has_many :gnc_charges

validates :first_name, :presence => true
validates :last_name, :presence => true
validates :birthday, :presence => true
validates :document_number, :presence => true, :uniqueness => true
validates_numericality_of :document_number, less_than_or_equal_to: 99999999, greater_than_or_equal_to: 1000000


def full_name
  first_name + " " + last_name
end
end
