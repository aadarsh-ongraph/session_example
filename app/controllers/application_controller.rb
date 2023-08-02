class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :current_customer, :customer_signed_in?

    def current_customer
        @current_customer ||= Customer.find_by(id: session[:user_id])
    end

    def customer_signed_in?
        !current_customer.nil?
    end
end
