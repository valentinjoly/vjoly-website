require 'jekyll/scholar'
require 'cgi'

module Jekyll
  class Scholar
    module Utilities
      def bibliography_tag(entry, index)
        return missing_reference unless entry
        tpl = liquid_template.render({
                 'entry' => liquidify(entry),
                 'reference' => reference_tag(entry, index),
                 'key' => entry.key,
                 'type' => entry.type.to_s,
                 'link' => repository_link_for(entry),
                 'index' => index
              })
        CGI::unescapeHTML(tpl)
      end
    end
  end
end
