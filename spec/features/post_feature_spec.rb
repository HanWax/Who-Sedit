require 'rails_helper' 

describe 'posts' do 
	context 'no posts' do 
		it 'should display no posts' do
			visit '/posts'
			expect(page).to have_content('No posts yet')
		end 
	end 

	context 'when there are posts' do 

		before do
			hannah = create(:user)
			login_as hannah
		end 

		it 'should display the posts' do 
			visit '/posts'
			click_link 'Add post' 
			post = create(:post)
			click_button 'Create post'
			expect(page).to have_content('Hello world')
			expect(page).to have_content('Hi')
		end 
	end 
end 