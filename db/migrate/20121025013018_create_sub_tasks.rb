class CreateSubTasks < ActiveRecord::Migration
  def change
    create_table :sub_tasks do |t|
      t.string :name, null: false, default: ''
      t.boolean :done, null: false, default: false
      t.references :task, null: false
      t.timestamps
    end
  end
end
