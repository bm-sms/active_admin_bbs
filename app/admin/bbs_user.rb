ActiveAdmin.register Bbs::User do
  actions :all, except: %i(new)
end
