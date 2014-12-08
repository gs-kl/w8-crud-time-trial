class AddTimestampsToProducts2 < ActiveRecord::Migration
  def change
          add_column(:products, :created_at, :datetime)
                add_column(:products, :updated_at, :datetime)
  end
end
