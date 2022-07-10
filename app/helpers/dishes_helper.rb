module DishesHelper
  def method_Enable
    Dish.enables.keys.map do |enable|
      [t("activerecord.attributes.options.option.#{enable}"), enable]
    end
  end
end
