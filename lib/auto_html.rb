module AutoHtml

  autoload :Filter,       'auto_html/filter'
  autoload :Format,       'auto_html/format'

  autoload :Emoji,        'auto_html/filters/emoji'
  autoload :Gist,         'auto_html/filters/gist'
  autoload :GoogleMap,    'auto_html/filters/google_map'
  autoload :Image,        'auto_html/filters/image'
  autoload :Instagram,    'auto_html/filters/instagram'
  autoload :Link,         'auto_html/filters/link'
  autoload :SimpleFormat, 'auto_html/filters/simple_format'
  autoload :Vimeo,        'auto_html/filters/vimeo'
  autoload :Youtube,      'auto_html/filters/youtube'

end
