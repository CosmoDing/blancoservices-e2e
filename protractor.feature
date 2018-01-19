
@HappyFlow
Feature: Blanco Regression Test for personal/Joint/Business account
  Enter the basic personal information
  Upload passport and enter additional details

  @Personal
  Scenario: Happy flow for personal account
    Given choose personal account for myself
    When I enter the basic details:
      | First Name | Last Name | Email                      | Phone             |
      | Cosmo       | Ding       | Cosmo.Ding@dilatoit.com | +86 18051970204 |
    And I upload the passport "Passport.jpg"
    Then site will collect my information and show on the screen
    When I fill in additional details
    Then server will received the information successfully "We have received your information successfully."

  @Joint
  Scenario: Happy flow for myself and partner account
    Given choose personal account for myself and partner
    When I enter the basic details:
      | First Name | Last Name | Email                      | Phone             |
      | Cosmo       | Ding       | Cosmo.Ding@dilatoit.com | +86 18051970204 |
    And I upload the passport "Passport.jpg"
    Then site will collect my information and show on the screen
    When I fill in additional details
    Then server will received the information successfully "The first part of the registration is complete."
    When I register partner
    And I upload the passport "Passport.jpg"
    And I fill in partner additional details
    Then server will received the information successfully "We have received your information successfully."

  @Business
  Scenario: Happy flow for business account
    Given choose business account
    When I enter the company basic details:
      | Company Name | Email Address             | Phone             |
      | Dilato        | Cosmo.Ding@dilatoit.com  | +86 18051970204 |
    And I fill in company additional details
    Then server will received the information successfully "We have received your information successfully."

