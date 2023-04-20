class AddCompanyIdToCompany < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :company_id, :integer
  end
end
