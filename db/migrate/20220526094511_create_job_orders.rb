class CreateJobOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :job_orders, :id => false do |t|
      t.integer :job_order_number, presence: true, primary_key: true
      t.string :service
      t.string :department, length: { in: 6..40 }, presence: true
      t.string :description, presence: true
      t.string :status, default: "no update yet"
      t.string :remarks, default: "no update yet"
      t.date :remarks_as_of
      t.string :classification, default: "no update yet"
      t.string :engineering_unit, default: "no update yet"

      t.timestamps
    end
  end
end

#requestors table
      # t.string :requestor
      # t.string :service
      # t.string :department
      # t.string :local_number
      # t.string :email_address

#status - ilagay sa job_orders table
      #t.string :status
      #t.string :remarks
      #t.date :remarks_as_of
      #t.string :classification
      #t.string :

#workers 