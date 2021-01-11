class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :content
      t.string :status #カラム追加(status)
      t.references :user, foreign_key: true #カラム追加（user_id）

      t.timestamps
    end
  end
end
