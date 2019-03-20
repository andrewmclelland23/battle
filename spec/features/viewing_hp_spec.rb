feature 'Testing hitpoint visability' do
  scenario 'Can see player hitpoints' do
    visit('/')
    fill_in 'player1', with: 'Andy'
    fill_in 'player2', with: 'Tome'
    click_button 'Submit'
    expect(page).to have_content 'Tome: 100 HP'
  end
end
