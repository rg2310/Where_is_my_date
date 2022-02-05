class AddNumberofParticipantsToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :number_of_participants, :integer
  end
end
