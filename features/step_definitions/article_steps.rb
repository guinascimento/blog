Given /^I have articles with title (.+)$/ do |titles|
  titles.each do |title|
    Article.create!(:title => title)
  end
end

Given /^I have no articles$/ do
  Article.delete_all
end

Then /^I should have ([0-9]+) article$/ do |count|
  Article.count.should == count.to_i
end