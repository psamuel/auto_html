require 'uri'
require 'rinku'
require 'rexml/document'

module AutoHtml
  class Link < Filter

    def call(text)
      attributes = Array(options)\
        .reject { |k,v| v.nil? }\
        .map { |k, v| %{#{k}="#{REXML::Text::normalize(v)}"} }.join(' ')

      Rinku.auto_link(text, :all, attributes)
    end

  end
end
