feature 'Testing players can switch goes' do
  describe 'Switch turns' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Current Player: Andy"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_link 'Attack'
      click_link 'OK'
      expect(page).to_not have_content "Current Player: Andy"
      expect(page).to have_content 'Current Player: Tome'
    end

    scenario 'after player 2 attacks' do
      sign_in_and_play
      click_link 'Attack'
      click_link 'OK'
      click_link 'Attack'
      click_link 'OK'
      expect(page).to_not have_content "Current Player: Tome"
      expect(page).to have_content 'Current Player: Andy'
    end
  end
end
