module Wikipedia
  class SearchSection < SitePrism::Section
    element :search_field, "input[id='searchInput']"
    element :search_button, "input[id='searchButton']"
  end
end
