require 'middleman-core'

Middleman::Extensions.register :cordova_app_config do
  require 'middleman-cordova-app-config/cordova_app_config_extension'
  CordovaAppConfigExtension
end
