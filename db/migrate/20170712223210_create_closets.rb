class CreateClosets < ActiveRecord::Migration[5.1]
  def change
    create_table :closets do |t|
      t.string :name
      t.timestamps
    end
  end
end
