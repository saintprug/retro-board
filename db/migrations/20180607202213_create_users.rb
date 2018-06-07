Hanami::Model.migration do
  change do
    create_table :users do
      binary :uuid, primary_key: true
      column :name, String, null: false
      column :avatar, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
