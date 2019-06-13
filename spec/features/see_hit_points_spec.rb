feature "check hit points" do
  scenario "see Player 1's hit points" do
    sign_in_and_play

    expect(page).to have_content("Dave = 100 Hit Points")
  end
end
