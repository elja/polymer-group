module ApplicationHelper
  def yield_or(name, content = nil, &block)
    if content_for?(name)
      content_for(name)
    else
      block_given? ? capture(&block) : content
    end
  end

  def home_page
    @home_page ||= Refinery::Page.where(:link_url => '/').first
  end
end
