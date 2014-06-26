Feature: looking up a movie whit rest service

  Scenario:  using rotten tomatoes to look up movie data
    Given a user checks rotten tommats for a movie
    Then Movie data is return

  Scenario Outline: validating toy story 3 data
    Given user goes to rotten tomatoes for toy story
    Then user retrieves and validates "<data>" of toy story with "<correct_info>"
  Examples:
    | data | correct_info |
    | title | Toy Story 3 |
    | year  |  2010       |
    |mpaa_rating|  G      |
    | runtime|    103     |
