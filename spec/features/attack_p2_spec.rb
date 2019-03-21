feature 'Attacking player 2' do
  scenario 'Can attack player 2 and get confirmation message' do
    sign_in_and_play
    click_link 'Attack Player 2'
    expect(page).to have_content 'Andy attacks Tome!'
  end
  scenario 'When attacked, p2 loses 20hp' do
    sign_in_and_play
    click_link 'Attack Player 2'
    expect(page).to have_content 'Tome: 80 HP'
  end
end
