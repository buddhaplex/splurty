require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

	test "unique_tag" do
		quote = Quote.create(:author => 'Charles Bukowski', :saying => 'Some people never go crazy. What truly horrible lives they must lead.')
		expected = 'CB#' + quote.id.to_s
		actual = quote.unique_tag
		assert_equal expected, actual
	end

end
