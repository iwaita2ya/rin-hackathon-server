class FieldRecord < ApplicationRecord
  has_many :field_record_details, dependent: :destroy
  accepts_nested_attributes_for :field_record_details, allow_destroy: true
end
