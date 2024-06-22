class Employee < ApplicationRecord
  # Include any necessary modules and associations here

  # Explicitly allowlisting attributes for Ransack
  def self.ransackable_attributes(auth_object = nil)
    ["address", "created_at", "department", "email", "id", "name", "salary", "updated_at"]
  end

  # You can also specify ransackable associations if needed
  def self.ransackable_associations(auth_object = nil)
    []
  end
end
