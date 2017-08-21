# db/migrate/x_create_user_tokens.rb
class CreateUserTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :user_tokens do |t|
      t.string :token
      t.references :user, foreign_key: true
      t.timestamps
    end

    add_index :user_tokens, :token, unique: true
  end
end