class AddFieldToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :title, :string
    add_column :users, :bio, :text
    add_column :users, :avatar, :string
    add_column :users, :skill, :string
    add_column :users, :cv, :string
    add_column :users, :website, :string
    add_column :users, :company, :string
    add_column :users, :user_type, :boolean
  end
end
