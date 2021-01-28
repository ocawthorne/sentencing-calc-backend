class AlterColumnsDefendants < ActiveRecord::Migration[6.1]
  def change
    add_column :defendants, :session_id, :string
    add_column :defendants, :sentence_len, :string
    add_column :defendants, :sentence_len_raw, :integer
    
    remove_column :defendants, :sentencing_date
    remove_column :defendants, :session_hash
    remove_column :defendants, :sentence_length
  end
end
