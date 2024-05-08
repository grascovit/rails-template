# frozen_string_literal: true

module Authenticable
  extend ActiveSupport::Concern

  included do
    helper_method :current_user, :user_signed_in?
  end

  def user_signed_in?
    current_user.present?
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  rescue ActiveRecord::RecordNotFound
    nil
  end

  def authenticate_user
    redirect_to new_magic_link_path, alert: t('errors.unauthorized') unless user_signed_in?
  end
end
