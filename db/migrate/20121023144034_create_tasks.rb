class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null: false, default: ''
      t.boolean :done, null: false, default: false

      t.timestamps
    end
  end
end
