class CreateUserLectures < ActiveRecord::Migration[7.0]
  def change
    create_table :user_lectures do |t|
      t.references :user, null: false, foreign_key: true
      t.references :lecture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
