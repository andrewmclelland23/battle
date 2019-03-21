feature 'Testing hitpoint visability' do
  scenario 'Can see player hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Tome: 100 HP'
  end
end
