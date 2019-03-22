feature 'Testing players can lose' do
  describe 'lose game when 0HP' do
    scenario 'at the start of the game' do
      sign_in_and_play
      9.times do
        click_link 'Attack'
        click_link 'OK'
      end
      expect(page).to have_content "Andy Wins !!!"
    end
  end
end
