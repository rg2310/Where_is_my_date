class AddAddressToExperiences < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :address, :text
  end
end
