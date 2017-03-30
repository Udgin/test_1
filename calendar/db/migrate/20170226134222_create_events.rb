class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :text
      t.text :data_times
      t.text :calendar

      t.timestamps
    end
  end
end
