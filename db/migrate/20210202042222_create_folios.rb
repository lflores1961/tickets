class CreateFolios < ActiveRecord::Migration[6.0]
  def change
    create_table :folios do |t|
      t.bigint :numero_folio

      t.timestamps
    end
  end
end
