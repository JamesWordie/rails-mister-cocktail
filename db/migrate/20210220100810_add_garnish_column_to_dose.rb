class AddGarnishColumnToDose < ActiveRecord::Migration[6.1]
  def change
    add_column :doses, :garnish, :string
  end
end
