require "./features/pages/wikipedia/search_section"

module Wikipedia
  class Article < SitePrism::Page

    element :article_title, "h1#firstHeading"
    element :content_table, "div#toc"
    section :search, Wikipedia::SearchSection, "#searchform"

  end
end