class CreateDefendants < ActiveRecord::Migration[6.1]
  def change
    create_table :defendants do |t|
      t.string :name
      t.float :discount
      t.datetime :sentencing_date
      t.string :sentence_length
      t.string :session_hash
      t.timestamps
    end
  end
end
