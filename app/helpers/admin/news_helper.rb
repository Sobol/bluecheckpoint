module Admin::NewsHelper
  def article_description(article)
    body = strip_tags(article.content) || ''
    body.slice(0, 30) + '...'
  end
end
