feature "Hit points" do
  scenario "displays p2 hit points on /play page" do
    sign_in_and_play
    expect(page).to have_content("Misty hit points: 100")
  end
end
