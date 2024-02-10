# frozen_string_literal: true

module ApplicationHelper
  def flash_class(level)
    case level.to_sym
    when :notice then 'bg-indigo-100 text-indigo-700'
    when :success then 'bg-green-100 text-green-700'
    when :alert then 'bg-red-100 text-red-700'
    else 'bg-gray-100 text-gray-700'
    end
  end
end
