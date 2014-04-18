Gem::Specification.new do |s|
  s.name        = 'story_branch'
  s.version     = '0.0.0'
  s.date        = '2014-04-15'
  s.summary     = "Story Branch - create git branches based on pivotal tracker stories"
  s.description = "Simple gem that fetches the available stories in your pivotaltracker project and allows you to create a git branch with the name based on the selected story"
  s.authors     = ["Jason Milkins", "Gabe Hollombe", "Rui Baltazar"]
  s.email       = ['jason@opsmanager.com',"gabe@neo.com", "rui.p.baltazar@gmail.com"]
  s.files       = ["lib/story_branch.rb"]
  s.homepage    =
    'http://rubygems.org/gems/story_branch'
  s.license       = 'MIT'
  s.required_ruby_version = '>= 1.9.3'
  s.add_runtime_dependency 'pivotal-tracker','~> 0.5'
  s.add_runtime_dependency 'git', '~> 1.2'
  s.add_runtime_dependency 'levenshtein-ffi', '~> 1.0'
  s.executables  = ['story_branch']
end