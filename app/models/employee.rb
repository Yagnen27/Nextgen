class Employee < ApplicationRecord

  validates :name, presence: true
  validates :department, presence: true
  validates :address, presence: true
  validates :salary, presence: true, numericality: { greater_than: 0 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :password, presence: true, length: { minimum: 6 }, if: -> { new_record? || !password.nil? }

  validate :custom_validation_method

  private

  def custom_validation_method
    true
  end
end
