module Eve
  module Errors
    # 2xx - authentication/security/credentials error
    class AuthenticationError < StandardError; end

    module AuthenticationErrors
      # 200 - Security level not high enough.
      class InadequateSecurityLevel < AuthenticationError; end
      # 201 - Character does not belong to account.
      class WrongAccount < AuthenticationError; end
      # 202 - Cached API key authentication failure.
      class CachedKeyAuthFailure < AuthenticationError; end
      # 203 - Authentication failure.
      # 204 - Authentication failure.
      # 210 - Authentication failure.
      class AuthenticationFailure < AuthenticationError; end
      # 205 - Authentication failure (final pass).
      # 212 - Authentication failure (final pass).
      class LastAuthenticationFailure < AuthenticationError; end
      # 207 - Not available for NPC corporations.
      class NotAvailable < AuthenticationError; end
      # 206 - Character must have Accountant or Junior Accountant roles.
      # 208 - Character must have Accountant, Junior Accountant, or Trader roles.
      # 209 - Character must be a Director or CEO.
      # 213 - Character must have Factory Manager role.
      class MissingRoles < AuthenticationError; end
      # 211 - Login denied by account status.
      class LoginDenied < AuthenticationError; end
      # 214 - Corporation is not part of alliance.
      class NotInAlliance < AuthenticationError; end
      # 220 - Invalid Corporation Key
      class InvalidCorporationKey < AuthenticationError
        def message
          return "220 - Invalid Corporation Key. Key owner does not fullfill role requirements anymore."
        end
      end
      # 221 - Illegal page request! Please verify the access granted by the key you are using!
      class IllegalPageRequest < AuthenticationError
        def message
          return "221 - Illegal page request! Please verify the access granted by the key you are using!"
        end
      end
      # 222 - Key has expired.
      class KeyExpired < AuthenticationError
        def message
          return "222 - Key has expired. Contact key owner for access renewal."
        end
      end
    end
  end
end
