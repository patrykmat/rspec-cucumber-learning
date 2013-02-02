class StubOutput
  def messages 
    @messages ||= []
  end

  def put(message)
    messages << message
  end
end

def output
  @output ||= StubOutput.new
end


Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  game = CodeBreaker::Game.new(output)
  game.start
end

Then /^I should see "([^"]*)"$/ do |message|
  output.messages.should include(message)
end

Given /^the secret code is "([^"]*)"$/ do |arg|
  pending
end
When /^I guess "([^"]*)"$/ do |arg|
  pending
end
Then /^the mark should be "([^"]*)"$/ do |arg|
  pending
end