Feature: Echo Transaction

Background:
  Given the application is available 

Scenario: Valid request message 
  When the client sends a valid Echo request with check value 5
  Then the resulting status code is 200 
  And the check value in the response is 6 

Scenario: Request message formatted incorrectly 
  When the client sends an invalid Echo request 
  Then the resulting status code is 500 
  And the response contains element "errorMessage" with value "Echo request message is formatted incorrectly"
  And the response contains element "sampleRequest" with value "/echo/5"

Scenario: Request message does not contain a check value 
  When the client sends an Echo request with no check value 
  Then the resulting status code is 500
  And the response contains element "errorMessage" with value "Echo request does not have a check value"
  And the response contains element "sampleRequest" with value "/echo/5"
