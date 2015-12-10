# Helper methods defined here can be accessed in any controller or view in the application

module Recordly
  class App
    module ArtistHelper
      def foo
        'bar'
      end
    end

    helpers ArtistHelper
  end
end
