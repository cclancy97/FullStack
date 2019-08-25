class AddUserToVillains < ActiveRecord::Migration[5.2]
  def change
    add_reference :villains, :user, foreign_key: true
  end
end
