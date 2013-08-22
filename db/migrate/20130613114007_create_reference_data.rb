class CreateReferenceData < ActiveRecord::Migration
  def change
    create_table :reference_data do |t|
      t.string :codeSet
      t.integer :codeId
      t.string :code
      t.integer :sortIndex

      t.timestamps
    end
  end
end
