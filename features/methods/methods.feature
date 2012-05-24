@gauntlet @run

Feature: Evaulate responses to various HTTP methods.

Background:
  Given python with requests module is installed

Scenario: Verify server responds correctly to various HTTP methods
  Given the hostname in the profile.xml
  When I run http_methods.py against the hostname in the profile
  Then the output should contain:
    """
	PASS : delete
    PASS : patch
	PASS : trace
	PASS : track
	PASS : bogus
    """

