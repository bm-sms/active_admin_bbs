module ActiveAdminBbs
  class Railtie < ::Rails::Railtie
    initializer 'active_admin_bbs' do
      ActiveSupport.on_load(:bbs_engine) do
        ActiveAdmin.application.load_paths << File.expand_path('../../../../app/admin', __FILE__)
      end
    end
  end
end
