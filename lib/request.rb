# A class holding an HTTP request. The object can be initialized with a raw
# request string and will parse it into simple Hash structures.
# 
# @author Patrick Hof
class Request

  attr_accessor :header, :body, :req

  HEADER_BLACKLIST = ["Host", "Accept", "Accept-Language", "Accept-Encoding", "Accept-Charset", "Keep-Alive", "Cache-Control"]

  # Creates a new Request object
  #
  # @param [String] data The HTTP request to parse
  # @option opts [String] :delimiter ('\r\n') The HTTP request's line delimiter
  # @option opts [Boolean] :header_bl (false) If the headers from the header blacklist should be automatically ignored
  def initialize(data, opts)
    @opts = opts
    header, body = data.split(@opts[:delimiter]*2, 2)
    self.req = {}
    self.header = header_to_hash(header)
    self.body = body_to_hash(body)
  end

  # Parses the HTTP Request header into a Hash structure
  #
  # @param [String] data The raw request headers
  # @return [Hash] A Hash structure holding the header values
  def header_to_hash data
    header = {}
    data = data.split(@opts[:delimiter])
    self.req["Verb"], self.req["Url"], self.req["Version"] = data.shift.split(" ", 3)
    data.each do |line|
      k,v = line.split(":", 2)
      if !@opts[:header_bl] || !(HEADER_BLACKLIST.include? k)
        header[k] = v.lstrip
      end
    end
    header
  end

  # Parses the HTTP request body into a Hash structure
  #
  # @param [String] data The raw request body
  # @return [String] A Hash structure holding the body values.
  # @example
  #   body_to_hash('aa=bb&cc=dd&cc=ee') #=> {"aa" => ["bb"], "cc" => ["dd", "ee"]}
  def body_to_hash data
    body = {}
    if data
      data.split("&").map {|x| x.split("=")}.each do |a|
        if a.length == 1
          body[a[0]] = [] unless body.has_key?(a[0])
        elsif a.length == 2
          if body.has_key?(a[0])
            body[a[0]] << a[1]
          else
            body[a[0]] = [a[1]]
          end
        end
      end
    end
    body
  end
end
