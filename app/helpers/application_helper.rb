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

  def will_paginate(collection_or_options = nil, options = { :container => false })
    if collection_or_options.is_a? Hash
      options, collection_or_options = collection_or_options, nil
    end
    unless options[:renderer]
      options = options.merge :renderer => UnifyLinkRenderer
    end
    super *[collection_or_options, options].compact
  end
end
