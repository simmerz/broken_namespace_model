module ApplicationHelper
  def button_link_to(*args, &block)
    link_to *args, class: 'button', &block
  end
end
