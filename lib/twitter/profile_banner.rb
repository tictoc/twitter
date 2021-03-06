require 'twitter/base'

module Twitter
  class ProfileBanner < Twitter::Base
    # Returns an array of photo sizes
    #
    # @return [Array<Twitter::Size>]
    def sizes
      Array(@attrs[:sizes]).reduce({}) do |object, (key, value)|
        object[key] = Size.new(value)
        object
      end
    end
    memoize :sizes
  end
end
