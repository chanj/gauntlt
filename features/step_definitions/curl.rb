
Given /^curl is installed$/ do
  steps %{
    When I run `which curl`
    Then the output should contain:
    """
    curl
    """
  } 
end

When /^I run curl against the hostname in the profile/ do 
  steps %{
    When I run `curl -I \"#{@hostname}\"`
  }
end


