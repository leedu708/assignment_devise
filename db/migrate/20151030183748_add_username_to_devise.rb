class AddUsernameToDevise < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.change :username, :string, null: false, default: ""
    end

    add_index :users, :username, unique: true
  end
end
