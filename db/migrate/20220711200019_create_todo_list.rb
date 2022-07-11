class CreateTodoList < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :content
      t.string :name
      t.date :due_date
    end
  end
end
