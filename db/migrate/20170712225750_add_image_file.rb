class AddImageFile < ActiveRecord::Migration[5.1]
  def self.up
    change_table :skeletons do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :skeletons, :picture
  end
end
