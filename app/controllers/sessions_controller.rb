# frozen_string_literal: true

class SessionsController < ApplicationController
  def new
    if user.present?
      session[:user_id] = user_id
      redirect_to root_path, success: t('.success')
    else
      redirect_to new_magic_link_path, alert: t('.failure')
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, success: t('.success')
  end

  private

  def user_id
    @user_id ||= JWT.decode(params[:token], ENV.fetch('JWT_SECRET', nil)).first['user_id']
  rescue JWT::DecodeError
    nil
  end

  def user
    @user ||= User.find(user_id)
  rescue ActiveRecord::RecordNotFound
    nil
  end
end
