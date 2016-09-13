$:.push File.expand_path('../lib', __FILE__)

require 'active_admin_bbs/version'

Gem::Specification.new do |s|
  s.name        = 'active_admin_bbs'
  s.version     = ActiveAdminBbs::VERSION
  s.authors     = ['']
  s.email       = ['jp.bm-sms.developers@bm-sms.jp']
  s.homepage    = ''
  s.summary     = ''
  s.description = ''
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.0.0', '>= 5.0.0.1'
  s.add_dependency 'bbs'
  s.add_runtime_dependency 'activeadmin'
  s.add_runtime_dependency 'inherited_resources'

  s.add_development_dependency 'pg'
end
