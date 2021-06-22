class TubeVerification < ApplicationRecord

  paginates_per 4
  belongs_to :exam_type
  belongs_to :tube
  belongs_to :technician

    validates :date, :presence => true
    validates :exam_type, :presence => true
    validates :tube, :presence => true
    validates :technician, :presence => true

end
