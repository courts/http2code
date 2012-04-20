require 'bacon'
require 'http2code/request.rb'

describe Request do
  before do
    options = {
      :delimiter => "\r\n",
      :template  => nil,
      :header_bl => false,
      :pretty    => true
    }
    @req_get = Request.new(File.open('http_get.txt').read(), options)
    @req_post = Request.new(File.open('http_post.txt').read(), options)
  end

  it 'should parse headers' do
    @req_get.header.should == {
      "Host"            => "http://www.example.org",
      "User-Agent"      => "Mozilla/5.0 (X11; Linux i686; rv:11.0) Gecko/20100101 Firefox/11.0",
      "Accept"          => "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
      "Accept-Language" => "en-us,en;q=0.5",
      "Accept-Encoding" => "gzip, deflate",
      "Connection"      => "keep-alive"
    }

    @req_get.body.should == {}
  end

  it 'should parse a POST body' do
    @req_post.body.should == {
      "param1" => ["1", "4"],
      "param2" => ["2"],
      "param3" => ["3"]
    }
  end
end
