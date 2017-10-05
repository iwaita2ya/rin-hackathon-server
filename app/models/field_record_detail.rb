class FieldRecordDetail < ApplicationRecord
  has_one :field_record
  belongs_to :field_record
end
