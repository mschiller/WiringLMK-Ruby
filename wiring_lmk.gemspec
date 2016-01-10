Gem::Specification.new do |s|
  s.name	= 'wiring_lmk'
  s.version	= '2.0.0'
  s.license = 'GNU Lesser General Public License v3'
  s.date	= '2016-01-10'
  s.platform= Gem::Platform::RUBY
  s.summary	= "Arduino wiring-like library for Banana Pi GPIO. Will only work on a Pi. Alpha version."
  s.authors	= ["Gordon","Phil"]
  s.email	= 'phil@gadgetoid.com'
  s.files	= Dir.glob('lib/wiring_lmk/*.rb') + Dir.glob('lib/*.rb') + Dir.glob('ext/**/**/*.{c,h}') + Dir.glob('ext/**/*.{c,h,rb}')
  s.homepage	= 'http://rubygems.org/gems/wiring_lmk'
  s.extensions	= ['ext/wiringpi/extconf.rb']
  s.description = 'WiringPi library wrapper for the Banana Pi only. Wraps up version 2.x of the Arduino wiring-like WiringPi library into a convinient Ruby gem. Currently includes GPIO functionality, I2C, SPI, serial and shiftOut/shiftIn support in addition to peripheral drivers for things like the MCP23017. Credit to Gordon for the WiringPi library, which can be found here: http://www.wiringpi.com'
end
