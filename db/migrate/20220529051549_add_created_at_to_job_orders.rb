class AddCreatedAtToJobOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :job_orders, :created_at_month, :string
    add_column :job_orders, :created_at_year, :string
    add_column :job_orders, :created_at_day, :string
  end
end
