module ClientsHelper
  def method_Block
    Client.blocks.keys.map do |block|
      [t("activerecord.attributes.options.option.#{block}"), block]
    end
  end
end
