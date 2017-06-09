class AddParamsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :social_security_number, :integer
    add_column :users, :company, :string
  end
end
