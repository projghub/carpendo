class Category < ActiveRecord::Base
  acts_as_nested_set

  has_many :categories_products
  has_many :products, :through => :categories_products

  def to_param
    "#{id} #{name}".parameterize
  end
end
