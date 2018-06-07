Hanami::Model.migration do
  change do
    add_column :users, :uid, String
    add_column :users, :token, String
    add_column :users, :login, String
  end
end
