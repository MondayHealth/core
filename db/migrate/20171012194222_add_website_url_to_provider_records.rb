class AddWebsiteUrlToProviderRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :provider_records, :website_url, :text
  end
end
