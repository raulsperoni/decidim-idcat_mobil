# # frozen_string_literal: true

# module Decidim
#   module IdUruguay
#     # This is the engine that runs on the public interface of `IdUruguay`.
#     class AdminEngine < ::Rails::Engine
#       isolate_namespace Decidim::IdUruguay::Admin

#       paths["db/migrate"] = nil
#       paths["lib/tasks"] = nil

#       routes do
#         # Add admin engine routes here
#         # resources :iduruguay do
#         #   collection do
#         #     resources :exports, only: [:create]
#         #   end
#         # end
#         # root to: "iduruguay#index"
#       end

#       def load_seed
#         nil
#       end
#     end
#   end
# end
