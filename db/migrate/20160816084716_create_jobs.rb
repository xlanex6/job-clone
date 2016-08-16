class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :content
      t.date :start_time
      t.date :end_time
      t.string :address
      t.references :skill, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
