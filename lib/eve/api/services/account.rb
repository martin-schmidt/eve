module Eve
  class API
    module Services
      module Account
        def characters
          validate_credentials(:limited)
          request(:account, :characters)
        end

        def apikeyinfo
          validate_credentials(:limited)
          request(:account, :apikeyinfo)
        end
      end
    end
  end
end
