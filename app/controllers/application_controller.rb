class ApplicationController < ActionController::Base
  protect_from_forgery

protected
  #def authenticate
  #  authenticate_or_request_with_http_basic do |username, password|
  #    username == "admin" && password == "herrera"
  #  end
  #end

  #before_filter :authenticate

  def generate_csv_headers(filename)
    headers.merge!({
      'Cache-Control'             => 'must-revalidate, post-check=0, pre-check=0',
      'Content-Type'              => 'text/csv',
      'Content-Disposition'       => "attachment; filename=\"#{filename}\"",
      'Content-Transfer-Encoding' => 'binary'
    })
  end
end
