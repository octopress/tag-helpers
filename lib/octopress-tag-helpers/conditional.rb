module Octopress
  module TagHelpers
    module Conditional
      SYNTAX = /(?<tag>.*)\s(?<condition>if|unless)\s(?<expression>.+)/

      def self.parse(markup, context)
        matched = markup.strip.match(SYNTAX)
        if matched
          case matched['condition'].strip
          when 'if'
            tag = Liquid::If.new('if', matched['expression'], ["true","{% endif %}"])
          when 'unless'
            tag = Liquid::Unless.new('unless', matched['expression'], ["true","{% endunless %}"])
          end
          tag.render(context) != '' ? matched['tag'] : false
        else
          markup
        end
      end

    end
  end
end

