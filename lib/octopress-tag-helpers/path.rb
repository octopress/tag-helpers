module Octopress
  module TagHelpers
    module Path
      FILE = /(?<path>\S+)(\s?)(?<other>.*)/
      def self.parse(markup, context)
        matched = markup.strip.match(FILE)
        if matched
          (context[matched['path']].nil? ? matched['path'] : context[matched['path']]) + ' ' + (matched['other'] || '')
        else
          markup
        end
      end

      # Allow paths to begin from the directory of the context page or
      # have absolute paths
      #
      # Input: 
      #  - file: "file.html"
      #  - context: A Jekyll context object
      #
      #  Returns the full path to a file
      #
      def self.expand(file, context)
        root = context.registers[:site].source

        # If relative path, e.g. ./somefile, ../somefile
        if file =~ /^\.+\//
          page = context['page']
          local_dir = File.dirname(page['path'])
          File.expand_path(File.join(root, local_dir, file))

        # If absolute or relative to a user directory, e.g. /Users/Bob/somefile or ~/somefile
        elsif file =~ /^[\/~]/
          File.expand_path(file)

        # Otherwise, assume relative to site root
        else
          File.join(root, file)
        end
      end
    end
  end
end

