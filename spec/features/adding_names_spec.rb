feature 'Testing player name entry' do
  scenario 'Can add names via form' do
    sign_in_and_play
    expect(page).to have_content 'Andy Vs Tome'
  end
end
