# name: discourse-folksy-images
# about: inline images from folksy cdn
# version: 0.1
# authors: Régis Hanol

class Onebox::Engine::FolksyImageOnebox
  include Onebox::Engine

  matches_regexp /^(https?:)?\/\/images\.folksy\.com\/.+$/i

  def to_html
    "<a href='#{@url}' target='_blank'><img src='#{@url}'></a>"
  end
end
