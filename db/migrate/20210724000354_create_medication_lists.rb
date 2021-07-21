class CreateMedicationLists < ActiveRecord::Migration[6.0]
  def change
    create_table :medication_lists do |t|
      t.string :medication
      t.string :dosage
      t.string :unit
      t.string :frequency

      t.timestamps
    end
  end
end
