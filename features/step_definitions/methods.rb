
Given /^python is installed$/ do
  steps %{
    When I run `request_checker.py`
    Then the output should contain:
    """
    requests is available
    """
  } 
end

When /^I run http_methods.py against the hostname in the profile$/ do 
  steps %{
    When I run `http_options.py \"#{@hostname}"`
  }
end


