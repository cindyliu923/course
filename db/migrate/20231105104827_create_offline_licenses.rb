class CreateOfflineLicenses < ActiveRecord::Migration[7.0]
  def change
    create_table :offline_licenses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :lecture, null: false, foreign_key: true
      t.float :hours

      t.timestamps
    end
  end
end
