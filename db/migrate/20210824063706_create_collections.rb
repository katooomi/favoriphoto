class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.string :tweet
      t.text :image
      t.timestamps
    end
  end
end
