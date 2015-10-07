AutoHtml.add_filter(:dailymotion).with(:width => 480, :height => 360, :scrolling => "no", :frameborder => 0, :allow_full_screen => false) do |text, options|
  text.gsub(/http:\/\/www\.dailymotion\.com.*\/video\/([A-Za-z0-9]*)(_)([A-Za-z0-9._-]*)([?])([A-Za-z0-9=]*)/) do
    video_id = $1
    width = options[:width]
    height = options[:height]
    scrolling = options[:scrolling]
    frameborder = options[:frameborder]
    allow_full_screen = options[:allow_full_screen]

    %{<iframe frameborder="#{frameborder}" scrolling="#{scrolling}" width="#{width}" height="#{height}" src="//www.dailymotion.com/embed/video/#{video_id}" #{allow_full_screen ? ' webkitAllowFullScreen mozallowfullscreen allowFullScreen' : ''}></iframe>}
  end
end
