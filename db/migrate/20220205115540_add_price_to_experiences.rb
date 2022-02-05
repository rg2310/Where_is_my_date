class AddPriceToExperiences < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :price, :integer
  end
end
