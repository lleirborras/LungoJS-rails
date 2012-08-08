# -*- encoding: utf-8 -*-
require 'rails'

# Supply generator for Rails 3.0.x or if asset pipeline is not enabled
if ::Rails.version < "3.1" || !::Rails.application.config.assets.enabled
  module Lungojs
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "This generator installs Lungo.js #{Lungojs::Rails::LUNGO_JS_VERSION}"

        def copy_lungojs
          source_root File.expand_path('../../../../../vendor/assets', __FILE__)

          say_status("copying", "Lungo.js (#{Lungojs::Rails::LUNGO_JS_VERSION})", :green)
          copy_file "javascripts/lungo-1.2.js", "public/javascripts/lungo-1.2.js"
          copy_file "stylesheets/lungo-1.2.css", "public/stylesheets/lungo-1.2.js"
          copy_file "stylesheets/lungo.theme.default.css", "public/stylesheets/lungo.theme.default.js"
          copy_file "stylesheets/lungo.theme.default.font.css", "public/stylesheets/lungo.theme.default.font.js"
        end

        def copy_app
          source_root File.expand_path('./', __FILE__)

          say_status("copying", "app (#{Lungojs::Rails::LUNGO_JS_VERSION})", :green)
          directory 'app', 'public/javascripts/app'
        end
      end
    end
  end
else
  module Lungojs
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "Just show instructions so people will know what to do when mistakenly using generator for Rails 3.1 apps"

        def do_nothing
          say_status("deprecated", "You are using Rails 3.1 with the asset pipeline enabled, so this generator is not needed.")
          say_status("", "The necessary files are already in your asset pipeline.")
          say_status("", "Just add `//= require lungojs` to your app/assets/javascripts/application.js")
          say_status("", "If you upgraded your app from Rails 3.0 and still have lungo.js in your javascripts, be sure to remove them.")
          say_status("", "If you do not want the asset pipeline enabled, you may turn it off in application.rb and re-run this generator.")
          # ok, nothing
        end

        def copy_app
          source_root File.expand_path('./', __FILE__)

          say_status("copying", "app (#{Lungojs::Rails::LUNGO_JS_VERSION})", :green)
          directory 'app', 'public/javascripts/app'
        end
      end
    end
  end
end
