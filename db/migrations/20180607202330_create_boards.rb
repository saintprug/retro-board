Hanami::Model.migration do
  change do
    create_table :boards do
      column :uuid, String, primary_key: true, size: 64
      foreign_key :owner_id, :users

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
