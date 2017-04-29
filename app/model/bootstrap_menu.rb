class BootstrapMenu < Refinery::Pages::MenuPresenter
  def render_menu(items)
    content_tag(:section, :id => "nav", :class => 'navbar') do
      render_menu_items(items)
    end
  end
end
