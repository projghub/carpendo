class User < ActiveRecord::Base
  has_secure_password

  belongs_to :advertiser
  has_many :permissions_users
  has_many :permissions, through: :permissions_users

  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :permission_ids

private
  def self.advertiser_namespace
    joins('INNER JOIN permissions_users ON "users"."id" = "permissions_users"."user_id"')
    .joins('INNER JOIN permissions ON "permissions"."id" = "permissions_users"."permission_id"')
    .where('"users"."advertiser_id" <> ? AND "users"."advertiser_id" IS NOT NULL', '')
    .where('"permissions"."namespace" = ? AND "permissions"."controller" = ?', 'advertiser', 'application')
  end

  def self.admin_namespace
    joins('INNER JOIN permissions_users ON "users"."id" = "permissions_users"."user_id"')
    .joins('INNER JOIN permissions ON "permissions"."id" = "permissions_users"."permission_id"')
    .where('"permissions"."namespace" = ? AND "permissions"."controller" = ?', 'admin', 'application')
  end
end
