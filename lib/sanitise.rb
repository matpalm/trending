#!/usr/bin/env ruby
require 'cgi'

class String
  def without_urls 
    gsub(/http.*?\s/,' ').sub(/http.*?$/,' ') # single regex for this? i'm sleepy
  end
  
  def without_at_names
    gsub(/@.*\s/,' ')
  end
  
  def with_amps_spaced
    gsub /&/, ' & '
  end
  
  def without_punctionation
    gsub(/[\',]/,'').gsub(/[^a-z0-9&@#]/, ' ')
  end
  
  def duplicate_spaces_removed
    gsub(/\n/, ' ').gsub(/\s+/, ' ')
  end
  
  def sanitise
    CGI.unescapeHTML(self.
      #chomp.
      downcase.
      without_urls.
      #without_at_names.
      #with_amps_spaced.
      #without_punctionation.
      duplicate_spaces_removed.
      strip)
  end
  
end

