require 'spec_helper'
require 'vcr'

class VCRTest < Test::Unit::TestCase
  def test_example_dot_com
    VCR.use_cassette("synopsis") do
      response = Net::HTTP.get_response(URI('http://www.iana.org/domains/reserved'))
      assert_match /Example domains/, response.body
    end
  end
end

RSpec.describe AssertivaRuby do
  it "has a version number" do
    expect(AssertivaRuby::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
