class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :salutation
      t.string :first_name
      t.string :last_name
      t.string :email
    end

    create_table :authors_books do |t|

    end
  end
end
