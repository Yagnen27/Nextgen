class AdminUser < ApplicationRecord
  # Devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :validatable

  # Explicitly allowlisting attributes for Ransack
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "id", "remember_created_at", "reset_password_sent_at", "updated_at"]
  end

  # You can also specify ransackable associations if needed
  def self.ransackable_associations(auth_object = nil)
    []
  end
end
