#
# Copyright 2016, SUSE Linux GmbH
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "crowbar/init/version"

Gem::Specification.new do |s|
  s.name = "crowbar-init"
  s.version = Crowbar::Init::Version
  s.date = Time.now.utc.strftime("%F")

  s.authors = [
    "Thomas Boerger",
    "Maximilian Meister",
    "Rick Salevsky"
  ]
  s.email = [
    "tboerger@suse.de",
    "mmeister@suse.de",
    "rsalevsky@suse.com"
  ]

  s.summary = <<-EOF
    Crowbar installer
  EOF

  s.description = <<-EOF
    Standalone service for the Crowbar configration
  EOF

  s.homepage = "https://github.com/crowbar/crowbar-init"
  s.license = "Apache-2.0"

  s.files = ["CHANGELOG.md", "README.md", "LICENSE"]
  s.files += Dir.glob("assets/**/*")
  s.files += Dir.glob("bin/**/crowbar*")
  s.files += Dir.glob("config/*")
  s.files += Dir.glob("lib/**/*")
  s.files += Dir.glob("vendor/**/*")
  s.files += Dir.glob("views/**/*")

  s.test_files = Dir.glob("spec/**/*")

  s.executables = ["crowbar-init"]
  s.require_paths = ["lib"]

  s.required_ruby_version = ">= 1.9.3"

  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency "yard"
  s.add_development_dependency "rspec"
  s.add_development_dependency "webmock"
  s.add_development_dependency "listen", "<= 3.0.6"
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "guard-rubocop"

  s.add_runtime_dependency "puma", ">= 2.11.3"
  s.add_runtime_dependency "sprockets-helpers", ">= 1.2.1"
  s.add_runtime_dependency "tilt", ">= 1.4.1"
  s.add_runtime_dependency "json", ">= 1.4.4", "<= 1.8.1"
  s.add_runtime_dependency "sinatra", ">= 1.4.6"
  s.add_runtime_dependency "sinatra-contrib", ">= 1.4.7"
  s.add_runtime_dependency "haml", ">= 4.0.6"
  s.add_runtime_dependency "sass", ">= 3.4.13"
  s.add_runtime_dependency "bootstrap-sass", ">= 3.3.5"
  s.add_runtime_dependency "font-awesome-sass", ">= 4.5.0"
  s.add_runtime_dependency "uglifier", ">= 2.7.2"
end
