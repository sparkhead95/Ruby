Given(/^we have the following Users:$/) do |users| User.create! (users.hashes)
end

When(/^I search for User "([^"]*)"$/) do |query|
    visit('/users')
    fill_in('query', with: query)
    click_button('Search')
end
