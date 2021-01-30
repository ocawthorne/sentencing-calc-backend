class AddDefidToCounts < ActiveRecord::Migration[6.1]
  def change
    add_column :counts, :defendant_id, :integer
  end
end
