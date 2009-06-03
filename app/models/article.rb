# == Schema Information
# Schema version: 20090603182809
#
# Table name: articles
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Article < ActiveRecord::Base
  validates_presence_of :title

  has_many :comments
end
