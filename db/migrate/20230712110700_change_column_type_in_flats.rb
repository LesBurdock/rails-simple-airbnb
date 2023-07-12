class ChangeColumnTypeInFlats < ActiveRecord::Migration[7.0]
  def change
    change_column :flats, :pic_url, :text, array: true, default: []
  end
end
