class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string    :title
      t.string    :subtitle
      t.integer   :page_count
      t.integer   :color_page_count
      t.integer   :bw_page_count
      t.string    :isbn
      t.string    :ean
      t.string    :price_ttc
      t.datetime  :publication_expected_at
      t.datetime  :publication_effective_at
      t.text      :c4_extended
      t.text      :c4_reduced
      t.text      :c4_argu
      t.boolean   :visible
      t.integer   :appearance_percentage
      t.boolean   :appearance_random
      t.boolean   :showroom
      t.text      :description
      t.string    :image

      t.timestamps
    end
  end
end
