class CreateMedications < ActiveRecord::Migration[6.0]
  def change
    create_table :medications do |t|
      t.string :medication
      t.string :dosage
      t.string :unit
      t.string :frequency

      t.timestamps
    end
  end
end
