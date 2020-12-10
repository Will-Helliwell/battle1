feature "Testing form" do
  scenario "has a form which when filled with a name " do
    sign_in_and_play
    expect(page).to have_content("Ash vs Misty")
  end
end


# will divert to /names and display that name
