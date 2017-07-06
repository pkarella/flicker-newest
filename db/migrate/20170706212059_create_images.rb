class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.column :title, :string

      t.timestamps
    end
  end
end
