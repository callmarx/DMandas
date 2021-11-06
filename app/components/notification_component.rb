# frozen_string_literal: true

class NotificationComponent < ViewComponent::Base
  def initialize(type:, data:)
    @type = type
    @data = prepare_data(data)
    @icon_class = icon_class
    @icon_color_class = icon_color_class
  end

  private
    def prepare_data(data)
      case data
      when Hash
        data
      else
        { title: data }
      end
    end

    def icon_class
      case @type
      when "success"
        "fas fa-check-circle"
      when "error"
        "fas fa-exclamation-triangle"
      when "alert"
        "fas fa-exclamation-circle"
      else
        "fa fa-info-circle"
      end
    end

    def icon_color_class
      case @type
      when "success"
        "text-green-400"
      when "error"
        "text-yellow-400"
      when "alert"
        "text-red-400"
      else
        "text-blue-300"
      end
    end
end
