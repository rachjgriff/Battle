feature 'Testing infrastructure' do
  scenario 'checks webpage is working' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!' 
  end
end
