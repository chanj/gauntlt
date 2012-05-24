
Given /^python with requests module is installed$/ do
  steps %{
    When I run `request_checker.py`
    Then the output should contain:
    """
    requests is available
    """
  } 
end

When /^I run cookie_check.py against the hostname in the profile$/ do 
  steps %{
    When I run `cookie_check.py \"#{@hostname}"`
  }
end


