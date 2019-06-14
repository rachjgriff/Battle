feature "attack" do
  scenario "Player 1 attacks player 2" do
    sign_in_and_play
    click_button "ATTACK!"
    
    expect(page).to have_content("Dave has attacked Sarah")
  end
end
