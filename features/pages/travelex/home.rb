module Travelex
  class Home < SitePrism::Page
    set_url "https://www.travelex.co.uk/"
    element :slider, "div.slick-list.draggable",  match: :first

    def slider_possition
      (find("div.slick-active", match: :first)[:index].to_i+1).to_s
    end



  end
end