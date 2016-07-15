class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title, null: false
      t.string :body
      t.integer :pomodoros, default: 0
      t.integer :user_id, null: false
      t.timestamps null: false
    end
    add_index :todos, :user_id
  end
end
