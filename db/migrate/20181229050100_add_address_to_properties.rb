class AddAddressToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :street, :string
    add_column :properties, :zipcode, :integer
    add_column :properties, :city, :string
    add_column :properties, :state, :string
    add_column :properties, :country, :string
  end
end
