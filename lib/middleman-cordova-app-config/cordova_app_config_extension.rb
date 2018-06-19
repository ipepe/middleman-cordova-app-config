# Require core library
require 'middleman-core'

# Extension namespace
class CordovaAppConfigExtension < ::Middleman::Extension
  attr_reader :cordova_app_config
  expose_to_template :cordova_app_config, :javascript_include_cordova_app_config
  def initialize(app, options_hash = {}, &block)
    # Call super to build options from the options_hash
    super

    require 'nokogiri'

    xml = Nokogiri::XML(File.read(app.root + '/config.xml'))

    @cordova_app_config = OpenStruct.new(
      name: xml.at_css('name').text,
      version: xml.at_css('widget').attributes['version'].value,
      package_name: xml.at_css('widget').attributes['id'].value,
      env: config[:environment]
    )
  end

  def javascript_include_cordova_app_config
    "<script>window.cordova_app_config = #{cordova_app_config.to_h.to_json}</script>"
  end
end
