require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the path to the result erb", {:type => :feature}) do
  it('will detect the presence of our result page') do
    visit('/')
    click_button('Click')
    expect(page).to have_content('Result')

  end
end
