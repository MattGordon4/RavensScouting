class AddUserIdToSReports < ActiveRecord::Migration[7.0]
  def change
    add_column :s_reports, :user_id, :integer
    add_index :s_reports, :user_id
  end
end
