Bundler.require :default, :development

require 'rack/builder'
require 'rack/mock'

require 'minitest/unit'
require 'minitest/autorun'

class MiddlewareTest < MiniTest::Unit::TestCase

  def test_call
    app = Rack::Builder.new do
      use Rack::NoAutocomplete
      run proc {|env| [200, {'Content-Type' => 'text/html'}, [%q{
Some text
<form action="/to">
</form>
More text
      }]]}
    end.to_app
    mock = Rack::MockRequest.new app
    assert_equal %q{
Some text
<form autocomplete="off" action="/to">
</form>
More text
    }.strip, mock.get('/foo.html?baz=boo').body.strip    
  end
end
