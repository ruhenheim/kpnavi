class AddPersonalAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :kana, :string
    add_column :users, :sex, :integer
    add_column :users, :birth_of_date, :date
    add_column :users, :insurance_no, :string
    add_column :users, :zipcode, :string
    add_column :users, :prefecture_code, :integer
    add_column :users, :address, :string
    add_column :users, :tel, :string
  end
end
