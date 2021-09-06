class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.string :tweet
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
