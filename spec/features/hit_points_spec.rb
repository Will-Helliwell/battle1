feature "Hit points" do
  scenario "displays p2 hit points on /play page" do
    visit('/')
    fill_in("Player1", with: "Ash")
    fill_in("Player2", with: "Misty" )
    click_button("Play!GO!")
    expect(page).to have_content("Misty hit points: 100")
  end
end
