feature 'players attack and receive confirmation' do

  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content "Jimmy has attacked Hoju!"
  end

  scenario 'reduces Player2s hit points when Player1 attacks Player2'  do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content "Hoju:50HP"
  end


  scenario 'player 2 attacks player 1' do
    sign_in_and_play
    attack_and_confirm
    click_button "Attack!"
    expect(page).to have_content "Hoju has attacked Jimmy"
  end

  scenario 'player 1 hitpoint reduced by 10' do
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    expect(page).not_to have_content "Jimmy:60HP"
  end

  scenario 'reduce Player 2 HP by a random amount' do
	  sign_in_and_play
	  attack_and_confirm
	  expect(page).not_to have_content 'Hoju: 60HP'
	end

   scenario 'reduce Player 1 HP by a random amount' do
	  sign_in_and_play
	  attack_and_confirm
    attack_and_confirm
	  expect(page).not_to have_content 'Jimmy: 60HP'
	 end

end
