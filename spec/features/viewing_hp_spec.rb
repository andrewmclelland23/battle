feature 'Testing hitpoint visability' do
  scenario 'Can see player1 hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Tome: 100 HP'
  end
  scenario 'Can see player2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Andy: 100 HP'
  end
end
