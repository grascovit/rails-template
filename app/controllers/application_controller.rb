# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Authenticable

  add_flash_types :success
end
