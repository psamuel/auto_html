require 'tag_helper'
require 'gemoji'

module AutoHtml
  class Emoji < Filter
    def call(text)
      text.gsub(emoji_pattern) do |match|
        name = $1
        alt = ":#{name}:"
        TagHelper.image_tag(emoji_url(name), class: 'emoji', title: alt, alt: alt, height: 20, witdh: 20, align: 'absmiddle')
      end
    end

    def emoji_url(name)
      File.join(asset_root, asset_path(name))
    end

    def asset_root
      options[:asset_root] || '/images'
    end

    def asset_path(name)
      File.join("emoji", emoji_filename(name))
    end

    def self.emoji_pattern
      @emoji_pattern ||= /:(#{emoji_names.map { |name| Regexp.escape(name) }.join('|')}):/
    end

    def emoji_pattern
      self.class.emoji_pattern
    end

    def self.emoji_names
      ::Emoji.all.map(&:aliases).flatten.sort
    end

    def emoji_filename(name)
      ::Emoji.find_by_alias(name).image_filename
    end

  end
end

