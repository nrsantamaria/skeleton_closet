class CreateSkeletons < ActiveRecord::Migration[5.1]
  def change
    create_table :skeletons do |t|
      t.string :name
      t.string :body
      t.boolean :hide, default: false
      t.integer :closet_id
      t.timestamps
    end
  end
end
