module Admin::CodesHelper
  def code_description(code)
    body = strip_tags(code.text) || ''
    body.slice(0, 30) + '...'
  end
end
