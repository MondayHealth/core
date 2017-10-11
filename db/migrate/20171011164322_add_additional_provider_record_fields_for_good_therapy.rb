class AddAdditionalProviderRecordFieldsForGoodTherapy < ActiveRecord::Migration[5.1]
  def change
    add_column :provider_records, :minimum_fee, :integer
    add_column :provider_records, :maximum_fee, :integer
    add_column :provider_records, :sliding_scale, :boolean
    add_column :provider_records, :free_consultation, :boolean
    add_column :provider_records, :services, :text
    add_column :provider_records, :languages, :text
    add_column :provider_records, :modalities, :text
    add_column :provider_records, :works_with_groups, :text
    add_column :provider_records, :works_with_ages, :text
  end
end
