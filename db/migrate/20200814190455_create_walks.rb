class CreateWalks < ActiveRecord::Migration[5.2]
  def change
    create_table :walks do |t|
      t.integer :length_in_minutes
      t.integer :dog
      t.integer :dog_walker
    end
  end
end
