Feature: Sign in

    Scenario: User is able to sign in with valid credentials
        Given I'm not logged in
        And the user with credentials {'test@test.com'} {'123456'} is registered
        And the BE will respond with empty notes list
        And the app is running
        When I enter {'test@test.com'} into {0} text field
        And I enter {'123456'} into {1} text field
        And I tap {'SIGN IN'} text and wait
        Then I see {'Notes'} text
    
    Scenario: User is not able to sign in with invalid credentials
        Given I'm not logged in
        And the BE will reject any credentials
        And the app is running
        When I enter {'test@test.com'} into {0} text field
        And I enter {'123456'} into {1} text field
        And I tap {'SIGN IN'} text
        Then I see {'Invalid email and password combination'} text
        And I wait
    