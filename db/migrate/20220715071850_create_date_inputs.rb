class CreateDateInputs < ActiveRecord::Migration[7.0]
  def change
    create_table :date_inputs do |t|
      t.text :sample

      t.timestamps
    end
  end
end
