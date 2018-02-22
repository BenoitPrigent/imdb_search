class CreateSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :series do |t|
      t.string :title
      t.integer :year
      t.text :syllabus

      t.timestamps
    end
  end
end
