Feature: Splash

    Scenario: Login page is presented for not logged in user
        Given I'm not logged in
        And the app is running
        Then I see the Login page
        
    Scenario: Notes page is presented for logged in user
        Given I'm logged in
        And the BE will respond with empty notes list
        And the app is running
        Then I see {'Notes'} text