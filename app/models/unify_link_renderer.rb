#<ul class="pagination">
#<li><a href="#">«</a></li>
#<li class="active"><a href="#">1</a></li>
#<li><a href="#">2</a></li>
#<li><a href="#">3</a></li>
#<li><a href="#">4</a></li>
#<li><a href="#">»</a></li>
#</ul>

class UnifyLinkRenderer <  WillPaginate::ActionView::LinkRenderer

  def to_html
    html = pagination.map do |item|
      item.is_a?(Fixnum) ? page_number(item) : send(item)
    end.join(@options[:link_separator])

    html = default_container(html)
    @options[:container] ? html_container(html) : html
  end

  protected

  def page_number(page)
    unless page == current_page
      tag(:li, link(page, page, :rel => rel_value(page)))
    else
      tag(:li, tag(:a, page, :class => 'current'),  :class => 'active')
    end
  end

  def previous_or_next_page(page, text, classname)
    if page
      tag(:li, link(text, page, :class => classname))
    else
      tag(:li, tag(:a, text, :class => classname + ' disabled'))
    end
  end

  def default_container(html)
    tag(:ul, html, class: 'pagination')
  end

end