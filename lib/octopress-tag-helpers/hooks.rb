module Jekyll
  module Convertible
    alias_method :jekyll_do_layout, :do_layout

    def do_layout(payload, layouts)
      # The  tags needs access to the converter to process it while rendering.
      payload['converter'] = self.converter

      jekyll_do_layout(payload, layouts)
    end
  end
end
