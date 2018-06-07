Hanami::Model.migration do
  change do
    create_table :users do
      column :uuid, String, primary_key: true, size: 64
      column :name, String, null: false
      column :avatar, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
