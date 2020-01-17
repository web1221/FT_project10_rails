class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.column(:name, :string)
      t.column(:cost, :float)
      t.column(:country_of_origin, :string)

      t.timestamps()
    end
  end
end
