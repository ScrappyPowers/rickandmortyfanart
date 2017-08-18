class CreateFanArt < ActiveRecord::Migration[5.1]
  def change
    create_table :fan_arts do |t|
      t.string :title
      t.string :author
      t.text :description
      t.timestamps
    end
  end
end
