require "jekyll"

require "octopress-tag-helpers/version"
require "octopress-tag-helpers/hooks"

module Octopress
  module TagHelpers
    autoload :Conditional,            'octopress-tag-helpers/conditional'
    autoload :ContentFor,             'octopress-tag-helpers/content_for'
    autoload :Path,                   'octopress-tag-helpers/path'
    autoload :Var,                    'octopress-tag-helpers/var'
  end
end
