Hanami::Model.migration do
  change do
    create_table :boards do
      binary :uuid, primary_key: true
      foreign_key :owner_id, :users

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
