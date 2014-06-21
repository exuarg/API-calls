Feature: looking up a movie whit rest service

  Scenario:  using rotten tomatoes to look up movie data
    Given a user checks rotten tommats for a movie
    Then Movie data is return
