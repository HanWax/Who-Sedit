require 'rails_helper'

describe 'creating posts' do 

	context 'logged out' do 

		it 'should prompt the user to sign in' do 
			visit '/'
			expect(page).to have_content 'Sign in'
		end 
	end 

	context 'logged in' do 
		before do
			hannah = create(:user)
			login_as hannah
		end 

		it 'displays sign out' do
			visit '/'
			expect(page).to have_content('Sign out')
		end

		context 'a valid post' do 
			it 'prompts the user to fill out a form, then displays a new post' do 
				visit '/'
				first(:link, 'Add post').click 
				post = create(:post)
				click_button 'Create post'
				expect(page).to have_content "Hello world"
			end 
		end
	end 
end 