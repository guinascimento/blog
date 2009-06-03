# == Schema Information
# Schema version: 20090603182809
#
# Table name: comments
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  message    :text
#  article_id :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Comment < ActiveRecord::Base
  belongs_to :article
end
