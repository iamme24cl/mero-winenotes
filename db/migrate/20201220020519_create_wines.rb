class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :varietal
      t.string :appelation
      t.string :vintage
      t.integer :price
      t.string :image_url
      t.string :tasting_notes
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
