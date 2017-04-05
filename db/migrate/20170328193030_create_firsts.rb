class CreateFirsts < ActiveRecord::Migration[5.0]
  def change
    create_table :firsts do |t|
      t.column :question1, :string
      
      t.timestamps
    end
  end
end
