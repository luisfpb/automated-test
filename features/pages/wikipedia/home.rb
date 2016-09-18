require "./features/pages/wikipedia/search_section"

module Wikipedia
  class Home < SitePrism::Page
    set_url "https://en.wikipedia.org"

    section :search, Wikipedia::SearchSection, "#searchform"

  end
end