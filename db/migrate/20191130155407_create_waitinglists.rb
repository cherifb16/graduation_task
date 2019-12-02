class CreateWaitinglists < ActiveRecord::Migration[6.0]
  def change
    create_table :waitinglists do |t|
      t.string :status
      
      t.references :car
      t.references :user
      t.timestamps
    end
  end
end
