class AddIndexToDogSitters < ActiveRecord::Migration[6.0]
  def change
    add_reference :dog_sitters, :city, foreign_key: true 
  end
end
