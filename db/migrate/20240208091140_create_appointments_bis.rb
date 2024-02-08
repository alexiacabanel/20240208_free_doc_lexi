class CreateAppointmentsBis < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments_bis do |t|
      add_reference :appointments, :doctor, foreign_key: true
      add_reference :appointments, :patient, foreign_key: true
      t.timestamps
    end
  end
end
