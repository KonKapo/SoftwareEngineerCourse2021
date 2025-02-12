Feature: Manage user/organisation information
  
  Managing Information should be easy and fast
  
  Background:
    Given that I am logged in
    And I want to manage my information
    
  Scenario: Sumbit/edit information as a user
    Given that I am the user
    When My information is blank
    Then I should be allowed to submit information
    | Age  | 21 | maximum of 99 | minimum of 18 |
    | Name | Christos Skapetis | minium 3 characters ||
    | Place of living | Thessaloniki|||
    | Work | Student|||
    | Interests | Fishing, Reading, Environment|||
    | Past Events | Sfhmmy12, TedX AUTh|||
    And I should see a message saying "Information successfully submited."
    And I should prompted to my profile page
    When I am the user
    And My information is not blank
    Then I should be allowed to edit information
    | Age  | 21 | maximum of 99 | minimum of 18 |
    | Name | Christos Skapetis | minium 3 characters ||
    | Place of living | Thessaloniki|||
    | Work | Student|||
    | Interests | Fishing, Reading, Environment|||
    | Past Events | Sfhmmy12, TedX AUTh|||
    And I should see a message saying "Information successfully edited."
    And I should prompted to my profile page
      
  Scenario: Sumbit/edit information as an organisation
    Given I am the organisation    
    When My information is blank
    Then I should be allowed to submit information
    | Name | 
    | Founded |
    | Field |
    | Accepting Donations |
    And I should see a message saying "Information successfully submited."
    And I should prompted to my profile page
    When I am the organisation    
    And My information is not blank
    Then I should be allowed to edit information
    | Name | 
    | Founded |
    | Field |
    | Accepting Donations |
    And I should see a message saying "Information successfully edited."
    And I should prompted to my profile page
 
   Scenario: Unsuccesfuly sumbiting/editing user information
    Given that I am the user or organisation
    When My information violates one or more limitations
    Then I should see a message saying "Invalid Inormation" in #ff0000
    And I should be prompted to enter my information again