class CreateHanjas < ActiveRecord::Migration
  def change
    create_table :hanjas do |t|
      t.integer :day
      t.text :hanjajapanese
      t.text :hanjahiragana
      t.text :hanjakorean
      t.text :explanation
      t.timestamps
    end
  end
end
