# frozen_string_literal: true

require 'http'
require 'nokogiri'

# Uber Eats service
class UberEats
  attr_reader :http

  DISH_CONTAINER = '.fl.fm.fn.au'
  DISH_NAME  = 'div.ft.fu.fv.aj'
  DISH_PRICE = 'div.bv.bw.bx.as'

  def initialize(http: HTTP)
    @http = http
  end

  # Get list of dishes and their price.
  #
  # @param [String] html_str HTML document string
  # @return [Array<String>] Each entry contains dish name and price.
  def extract_menu(html_str: "")
    list = []

    # TODO: parse document & extract dishes

    list
  end

  private

  def get(url_str, redirect_limit: 5)
    raise TooManyRedirectsError if redirect_limit <= 0

    http.follow(max_hops: redirect_limit)
               .headers(default_headers)
               .get(url_str)
  end

  def default_headers()
    {
      user_agent: 'Mozilla/5.0 (X11; Linux x86_64; rv:82.0) Gecko/20100101 Firefox/82.0',
    }
  end
end

require_relative 'errors/too_many_redirects_error'
