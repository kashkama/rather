class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|


      t.timestamps
    end
  end
end
