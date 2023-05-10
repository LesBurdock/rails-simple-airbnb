class ChangePhotosColumnInFlats < ActiveRecord::Migration[7.0]
  def change
    change_column :flats, :pic_url, :jsonb, using: 'pic_url::jsonb[]', default: []
  end
end
