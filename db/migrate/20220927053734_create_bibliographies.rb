class CreateBibliographies < ActiveRecord::Migration[7.0]
  def change
    create_table :bibliographies do |t|
      t.string :author
      t.text :title
      t.date :year
      t.string :city, limit: 85
      t.string :publisher, limit: 85
      t.references :blog, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
