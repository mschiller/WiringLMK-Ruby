# WiringLmk
WiringLmk is an implementation of most of the Arduino Wiring functions for the Banana Pi, this gem is a wrapper for the main wiringpi library and provides a nice OO interface with a few other handy helpers.

## Installation
Install with `gem install wiringpi2` or use bundler's Gemfile
```
source 'https://rubygems.org'

gem 'wiringpi2' # https://github.com/mschiller/WiringLmk-Ruby
```
then: `bundle install`

## Example
```
#!/usr/bin/env ruby

require 'bundler'
Bundler.setup
Bundler.require

io = WiringLmk::GPIO.new do |gpio|
  gpio.pin_mode(0, WiringLmk::OUTPUT)
  gpio.pin_mode(1, WiringLmk::INPUT)
end

pin_state = io.digital_read(1) # Read from pin 1
puts pin_state

io.digital_write(0, WiringLmk::HIGH) # Turn pin 0 on
io.delay(100)                       # Wait
io.digital_write(0, WiringLmk::LOW)  # Turn pin 0 off
```
You will need to run your scripts as root because WiringLmk accesses `/dev/mem`

## Reference

### Pins
For a complete run-down see the [pins page](http://wiringpi.com/pins/) of the [wiringpi website](http://wiringpi.com/).
![alt text](http://wiringpi.com/wp-content/uploads/2013/03/gpio1.png "The main GPIO connector")
![alt text](http://wiringpi.com/wp-content/uploads/2013/03/gpio21.png "The secondary GPIO connector")

### More
Full details on the [wiringpi website](http://wiringpi.com/).
