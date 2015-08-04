require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
   test "quote show page" do
     quote = Quote.create(:author => 'Charles Bukowski', :saying => 'We are here to laugh at the odds and live our lives so well that Death will tremble to take us.')
   get :show, :id => quote.id
   assert_response :success
   end

   test "quote show page, not found" do
   	get :show, :id => 'OMG'
   	assert_response :not_found
   end
end
