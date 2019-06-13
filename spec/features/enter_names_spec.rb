feature 'enter names' do
  scenario 'players enter names into form and submit' do
    visit('/')

    fill_in "player_1", :with  => "Dave"
    fill_in "player_2", :with  => "Sarah"
    click_button "Submit"

    expect(page).to have_content "Dave vs. Sarah"
  end
end
