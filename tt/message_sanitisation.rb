#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
class String

  def without_edited_by_notes
    sub(/Edited by:.*/,'')  
  end

  def without_embedded_links
    gsub(/\[(.*?)\|(.*?)\]/) { $1 } 
  end

  def without_bare_urls
    gsub(/http.*?\s/,' ').sub(/http.*?$/,' ')
  end

  def without_brackets
    # caused confusion to tagger which treats
    # them as NNP. we end up getting "Phrase )" as NNP+ chunk
    gsub(/[\)\(]/, ' ')
  end

  def without_italics_markup 
    gsub(/\+/,' ')
  end

  def multiple_line_breaks_converted_to_fullstop
    gsub("\r/n",'.').gsub(/\.+/,'. ')
  end

  def duplicate_punctuation_removed
    str = self.clone
    '!.()[]{}|,@$%&*;:"\'\?'.chars.to_a.each do |char|
      regex = '\\' + char + '+' # weirdity ensues having this inside the actual gsub
      str.gsub!(/#{regex}/, char)
    end
    str
  end

  def duplicate_spaces_removed
    gsub("\r",' ').gsub("/n",' ').gsub("\t",' ').gsub(/\s+/,' ')
  end

  def sanitise
    without_edited_by_notes.
    without_embedded_links.
    without_bare_urls.
    without_brackets.
    without_italics_markup.
    multiple_line_breaks_converted_to_fullstop.
    duplicate_punctuation_removed.
    duplicate_spaces_removed.
    strip.
    downcase
  end

end
