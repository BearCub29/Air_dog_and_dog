class CreateDogSitters < ActiveRecord::Migration[6.0]
  def change
    create_table :dog_sitters do |t|
      t.string :name
      t.timestamps
    end
  end
end
