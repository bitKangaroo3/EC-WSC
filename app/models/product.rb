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
#  admin_id    :integer          default(0), not null
#

class Product < ApplicationRecord
	mount_uploader :photo, AvatarUploader
	serialize :avatars, JSON # If you use SQLite, add this line.
	include Hashid::Rails # hash id
	has_many :PurchaseRecordProducts, through: :purchase_record

	scope :has_admin_id_all, -> (current_admin_id) {
		where(admin_id: current_admin_id).ids
	}

end
