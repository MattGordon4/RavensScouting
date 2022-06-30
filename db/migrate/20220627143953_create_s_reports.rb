class CreateSReports < ActiveRecord::Migration[7.0]
  def change
    create_table :s_reports do |t|
      t.string :name
      t.string :ht
      t.string :wt
      t.string :pos
      t.string :school
      t.text :notes
      t.string :scout
      t.text :links

      t.timestamps
    end
  end
end
