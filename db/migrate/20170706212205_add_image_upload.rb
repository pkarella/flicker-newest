class AddImageUpload < ActiveRecord::Migration[5.1]
  def self.up
    change_table :images do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :images, :image
  end
end
