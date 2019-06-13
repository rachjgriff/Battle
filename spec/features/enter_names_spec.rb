feature 'enter names' do
  scenario 'players enter names into form and submit' do
    sign_in_and_play

    expect(page).to have_content "Dave vs. Sarah"
  end
end
