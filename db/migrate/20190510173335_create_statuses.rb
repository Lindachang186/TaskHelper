class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.string :condition
      t.belongs_to :user 
      t.belongs_to :task 
      t.timestamps null: false
    end
  end
end
