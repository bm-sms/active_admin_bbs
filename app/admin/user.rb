ActiveAdmin.register Bbs.config.user_class do
  actions :all, except: %i(new)
end
