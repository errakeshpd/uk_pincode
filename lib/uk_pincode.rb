require "uk_pincode/version"

module UkPincode
  def self.get_state(pincode)
    # http://post-code.net.au/
  	state_regex =
  	{ "Australian Capital Territory": /(26(0|1)[0-8])|(2609)|(29\d\d)/,
  	  "New South Wales": /(1|2)\d\d\d/,
  	  "Northern Territory": /0\d\d\d/,
  	  "Victoria": /(3|8)\d\d\d/,
  	  "Queensland": /(4|9)\d\d\d/,
  	  "South Australia": /5\d\d\d/,
  	  "Western Australia": /6\d\d\d/,
  	  "Tasmania": /7\d\d\d/
  	}
  	state = state_regex.keys.select{|key| !(pincode.to_s =~ (state_regex[key])).nil? }
  	return state[0]&.to_s || "unknown"
  end
end
