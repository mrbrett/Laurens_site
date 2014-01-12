class CreateHomepageTiles < ActiveRecord::Migration
  def change
    create_table :homepage_tiles do |t|
      t.string :text

      t.timestamps
    end
  end
end
