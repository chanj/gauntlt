@gauntlet @run

Feature: Evaulate received cookies against expected.

Background:
  Given python with requests module is installed

Scenario: Verify server is returning the cookies expected
  Given the hostname in the profile.xml
  When I run cookie_check.py against the hostname in the profile
  Then the output should contain:
    """
	PREF [False, {}]
	NID [False, {'HttpOnly': None}]
    """

