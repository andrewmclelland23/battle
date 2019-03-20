feature 'Testing player name entry' do
  scenario 'Can add names via form' do
    visit('/')
    fill_in 'player1', with: 'Andy'
    fill_in 'player2', with: 'Tome'
    click_button 'Submit'
    expect(page).to have_content 'Andy Vs Tome'
  end
end
