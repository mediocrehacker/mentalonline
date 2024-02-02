module ApplicationHelper
  def nav_items
    Spina::MenuPresenter.new(Spina::Navigation.find_by(name: "main")).collection.navigation_items
  end

  def footer_items
    Spina::MenuPresenter.new(Spina::Navigation.find_by(name: "footer")).collection.navigation_items
  end
end
