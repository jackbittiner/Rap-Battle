feature 'Testing name input' do
  scenario 'Can input name and submit to see names on screen' do
    visit('/')
    fill_in :player_1_name, with: "Coolio"
    fill_in :player_2_name, with: "Vanilla Ice"
    click_button "Submit"
    expect(page).to have_content("Coolio vs. Vanilla Ice")
  end
end
