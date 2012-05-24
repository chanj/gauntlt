@gauntlet @run

Feature: Run curl against a target and pass the value of the hostname from the profile.xml.

Background:
  Given curl is installed

Scenario: Verify a 301 is recieved from a curl
  Given the hostname in the profile.xml
  When I run curl against the hostname in the profile
  Then the output should contain:
    """
	HTTP/1.1 301 Moved Permanently
    """

