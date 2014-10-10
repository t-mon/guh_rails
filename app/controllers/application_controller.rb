class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  private

  def sanitize_params(attributes={})
    attributes ||= {}

    logger.info '-' * 80
    logger.info attributes.inspect
    logger.info '-' * 80

    sanitized_attributes = []

    attributes.each do |k, data|
      sanitized_attributes << data
    end

    logger.info sanitized_attributes.inspect
    logger.info '-' * 80

    return sanitized_attributes
  end

end
