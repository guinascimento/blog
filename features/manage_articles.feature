Feature: Manage Articles
    In order to make a blog
    As an author
    I want to create and manage articles

    Scenario: Articles List
        Given I have articles with title "Soup"
        When I go to the list of articles
        Then I should see "Soup"

    Scenario: Create Valid Article
        Given I have no articles
        And I am on the list of articles
        When I follow "New Article"
        And I fill in "Title" with "Soup"
        And I fill in "Content" with "Delicious"
        And I press "Create"
        Then I should see "New article created."
        And I should see "Soup"
        And I should see "Delicious"
        And I should have 1 article

    Scenario: Create Invalid Article
        Given I have no articles
        And I am on the list of articles
        When I follow "New Article"
        And I press "Create"
        Then I should see "Title can't be blank"

    Scenario: Post Comments to a Blog Entry
        Given I have articles with title "Soup"
        When I go to the list of articles
        And I follow "Post Your Comment"
        And I fill in "Title" with "Good Post!"
        And I fill in "Message" with "Your blog post is good."
        Then I press "Post Comment"
        And I should see "Good Post!"
        And I should see "Your blog post is good."

    Scenario: Delete a Blog Entry
        Given I have articles with title "Soup"
        When I go to the list of articles
        And I follow "Delete"
        Then I should see "Article deleted."
        And I should have 0 article

    Scenario: Send feedback to author about article
        Given I have articles with title "Soup"
        When I go to the list of articles
        And I follow "Send Feedback"
        And I fill in "Name" with "Steve"
        And I fill in "Email" with "steve@apple.com"
        And I fill in "Message" with "Good articles published!"
        Then I press "Send"
        And I should see "Feedback sent."