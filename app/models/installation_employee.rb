class InstallationEmployee < ApplicationRecord
    paginates_per 6
  belongs_to :kit_installation
  belongs_to :employee

  validates :employee, :presence => true
  validates :kit_installation, :presence => true
end
