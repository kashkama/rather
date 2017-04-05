class CreateLasts < ActiveRecord::Migration[5.0]
  def change
    create_table :lasts do |t|
      t.column :question2, :string
      
      t.timestamps
    end
  end
end
