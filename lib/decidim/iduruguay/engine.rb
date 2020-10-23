# frozen_string_literal: true

require "rails"
require "decidim/core"
require "omniauth/iduruguay"

module Decidim
  module IdUruguay
    # This is the engine that runs on the public interface of iduruguay.
    class Engine < ::Rails::Engine
      isolate_namespace Decidim::IdUruguay

      routes do
        # Add engine routes here
        # resources :iduruguay
        # root to: "iduruguay#index"
      end

      # #
      # # Force `Decidim::CurrentOrganization` to be executed before `Warden::Manager` to avoid path generation problems.
      # # NOTE: Remove this initializer when in Decidim 0.16.0 where it has been fixed.
      # #
      # initializer "decidim.middleware" do |app|
      #   # as `app.config.middleware` is just a proxy made available for configuration purposes
      #   # and acts as a command recorder that executes deletes always at the end
      #   # we can not remove and re-insert, but only duplicate `Decidim::CurrentOrganization`.
      #   # app.config.middleware.delete Decidim::CurrentOrganization
      #   app.config.middleware.insert_before Warden::Manager, Decidim::CurrentOrganization
      # end

      # initializer "decidim_idcat_mobil.assets" do |app|
      #   app.config.assets.precompile += %w[decidim_iduruguay_manifest.js decidim_idcat_mobil_manifest.css]
      # end
    end
  end
end
