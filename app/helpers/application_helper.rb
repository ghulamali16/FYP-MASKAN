# frozen_string_literal: true

module ApplicationHelper
  def profile_picture(account, width = 150)
    thumb = account.image.present? ? account.image : 'profile_placeholder.png'
    image_tag thumb, width: width, class: 'profile-pic img-circle'
  end

  def flash_notifications
    flash_messages = []

    flash.each do |type, message|
      type = 'success' if type == 'notice'
      type = 'error' if %w[alert danger].include?(type)
      text = "toastr['#{type}']('#{message}');"
      flash_messages << text.html_safe unless message.blank?
    end

    "<script>$(function(){ #{flash_messages.join("\n")} });</script>".html_safe if flash_messages.any?
  end
end
