feature "attack" do
  scenario "button confirms attack when clicked" do
    sign_in_and_play
    click_button("Attack!!!!!! Misty")
    expect(page).to have_content("Ouch, said Misty")
  end
end
