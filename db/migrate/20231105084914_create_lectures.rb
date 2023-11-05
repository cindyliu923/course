class CreateLectures < ActiveRecord::Migration[7.0]
  def change
    create_table :lectures do |t|
      t.string :name
      t.string :desc
      t.float :hours

      t.timestamps
    end
  end
end
