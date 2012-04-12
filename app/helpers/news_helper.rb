module NewsHelper
  def main_article_description(article)
    body = strip_tags(article.content) || ''
    body.slice(0, 100) + '...'
  end
end
