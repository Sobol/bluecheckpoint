module ApplicationHelper
  def browser_class
    user_agent = UserAgent.parse(request.user_agent)
    return if user_agent.browser == "Internet Explorer"
    user_agent.version.to_s =~ /\A\d+\.\d+/
    return if $MATCH.blank?

    if user_agent.browser.downcase == "opera"
      user_agent.browser.downcase
    else
      user_agent.browser.downcase + $MATCH
    end
  end
end
