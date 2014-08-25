require 'rails_helper' 

describe 'links' do 
	context 'no links' do 
		it 'should display no links' do
			visit '/links'
			expect(page).to have_content('No links yet')
		end 
	end 


before do 
	hannah = create(:user)
	login_as hannah
end

	context 'creating a link' do 
		it 'should not save the link if the url is not valid' do 
			visit '/'
			click_link 'Add link'
			link = Link.new(title: 'Hello', url: 'hello', comment: 'hello')
			click_button 'Create link'
			expect(page).not_to have_content('Hello')
		end 

		it 'should save the link if the url is valid' do 
			visit '/'
			click_link 'Add link'
			link = create(:link)
			click_button 'Create link'
			expect(page).to have_content('Google')
		end 
	end 
end 