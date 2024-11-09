# frozen_string_literal: true

class MagicLinksController < ApplicationController
  layout 'authentication'

  before_action :require_email, only: :create

  def new; end

  def create
    is_new_user = user.new_record?

    if user.save
      UserMailer.magic_link(user.id).deliver_later

      redirect_to root_path, success: is_new_user ? t('.sign_up_email_sent') : t('.sign_in_email_sent')
    else
      render :new
    end
  end

  private

  def user
    @user ||= User.find_or_initialize_by(email: params[:email])
  end

  def require_email
    redirect_to new_magic_link_path, alert: t('.email_required') and return if params[:email].blank?
  end
end
