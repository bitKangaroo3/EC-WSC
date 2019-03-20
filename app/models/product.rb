# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :text             not null
#  price       :integer          not null
#  unit        :string           default("yen"), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  photo       :string
#

class Product < ApplicationRecord
	mount_uploader :photo, AvatarUploader
	serialize :avatars, JSON # If you use SQLite, add this line.
	include Hashid::Rails # hash id
	has_many :PurchaseRecordProducts
end
