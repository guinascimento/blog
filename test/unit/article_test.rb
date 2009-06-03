require 'test_helper'

class ArticleTest < Test::Unit::TestCase

  should_validate_presence_of :title

  should_have_many :comments
end
