class Customer < ApplicationRecord
  validates :full_name, :phone_number, presence: true
  validates :phone_number, uniqueness: true
  has_one_attached :image

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email_address", "full_name", "id", "id_value", "notes", "phone_number", "updated_at"]
  end

end
