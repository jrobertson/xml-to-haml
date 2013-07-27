Gem::Specification.new do |s|
  s.name = 'xml-to-haml'
  s.version = '0.1.7'
  s.summary = 'xml-to-haml converts an XML string to HAML'
    s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb'] 
  s.signing_key = '../privatekeys/xml-to-haml.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/xml-to-haml'
end
