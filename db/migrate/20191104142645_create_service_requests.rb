class CreateServiceRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :service_requests do |t|
      t.string :description
      t.string :time_frame
      t.string :status
      t.references :user, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
