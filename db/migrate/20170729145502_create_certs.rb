class CreateCerts < ActiveRecord::Migration[5.1]
  def change
    create_table :certs do |t|
      t.string :title
      t.text :body
      t.string :image

      t.timestamps
    end
  end
end
