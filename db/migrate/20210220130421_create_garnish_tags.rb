class CreateGarnishTags < ActiveRecord::Migration[6.1]
  def change
    create_table :garnish_tags do |t|
      t.references :garnish, null: false, foreign_key: true
      t.references :cocktail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
