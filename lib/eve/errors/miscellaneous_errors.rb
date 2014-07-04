module Eve
  module Errors
    # 9xx - Miscellaneous
    class MiscellaneousError < StandardError; end

    module MiscellaneousErrors
      # 900 - Beta in progress, access denied.
      class BetaInProgress < MiscellaneousError; end
      # 901 - Web site database temporarily disabled.
      class SiteDatabaseDisabled < MiscellaneousError
        def message
          return "901 - Web site database temporarily disabled."
        end
      end
      # 902 - EVE backend database temporarily disabled.
      class BackendDatabaseDisabled < MiscellaneousError
        def message
          return "902 - EVE backend database temporarily disabled."
        end
      end
      # 903 - Rate limited [#]: please obey all cachedUntil timers.
      class RateLimited < MiscellaneousError
        def message
          return "903 - Rate limited [{0}]: please obey all cachedUntil timers."
        end
      end

      class IPBanned < MiscellaneousError
        def message
          return "904 - Your IP address has been temporarily blocked because it is causing too many errors. See the cacheUntil timestamp for when it will be opened again. IPs that continually cause a lot of errors in the API will be permanently banned, please take measures to minimize problematic API calls from your application."
        end
      end
    end
  end
end
