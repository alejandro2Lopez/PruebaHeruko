module DishesHelper
  def method_Enable
    Dish.enables.keys.map do |enable|
      [t("activerecord.attributes.isEnable.enable.#{enable}"), enable]
    end
  end
end
