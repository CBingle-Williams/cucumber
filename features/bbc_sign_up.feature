Feature: BBC Sign Up

    Scenario: Signing Up as under 13
        Given I access the registration page
        When I click under 13 button
        Then I get redirected to the parent or guardian page
    
    Scenario: Signing up as over 13
        Given I access the registration page
        When I click over 13 button
        Then I get redirected to date of birth page
    
    Scenario: Inputting user age
        Given I access the birth date page
        And I input day
        And I input month
        And I input year
        When I click on the continue button
        Then I get redirected to the register page
    
    Scenario: Fill in Registration Page
        Given I access the registration final page
        And I input my email
        And I input my valid password
        And I enter my postcode
        And I select my gener from dropdown menu
        And I choose if i want to recieve emails
        When I click on register button
        Then I get redirected
