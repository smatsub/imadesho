class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.integer :date
      t.text :title
      t.text :incharge
      t.text :sumjpn
      t.text :sumkor
      t.timestamps
    end
  end
end
