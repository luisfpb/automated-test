require "./features/pages/wikipedia/search_section"

module Wikipedia
  class SearchPage < SitePrism::Page
    element :didyoumean, "div[class='searchdidyoumean']"
    element :suggestion, "a[id='mw-search-DYM-suggestion']"
    elements :search_results, "ul.mw-search-results li"
    section :search, Wikipedia::SearchSection, "#searchform"

    def click_at_posstion(possition)
      search_results[possition-1].find("div.mw-search-result-heading a").click
    end
  end
end