def sign_in_and_play
  visit('/')
  fill_in("Player1", with: "Ash")
  fill_in("Player2", with: "Misty" )
  click_button("Play!GO!")
end
