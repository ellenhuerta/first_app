class AddPhotoCreditToRefineryImages < ActiveRecord::Migration
  def change
    add_column :refinery_images, :photo_credit, :string
  end
end
