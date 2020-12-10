feature "attack" do

  scenario "button confirms attack when clicked" do
    sign_in_and_play
    click_button("Attack!!!!!! Misty")
    expect(page).to have_content("Ouch, said Misty")
  end

  scenario "reduces player 2's points by 10 when clicked" do
    sign_in_and_play
    click_button("Attack!!!!!! Misty")
    expect(page).to have_content("Misty hit points: 90")
  end

end
