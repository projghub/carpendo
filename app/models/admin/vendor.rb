class Admin::Vendor < Vendor
  attr_accessible :address, :name, :city, :region, :postal_code, :phone, :email, :address2, :country
end
