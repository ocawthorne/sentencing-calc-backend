class AddLengthToCounts < ActiveRecord::Migration[6.1]
  def change
    add_column :counts, :sentence_len, :string
  end
end
