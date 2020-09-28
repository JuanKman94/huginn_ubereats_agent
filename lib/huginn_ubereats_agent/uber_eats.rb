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
    doc = Nokogiri::HTML(html_str)
    menu = []
    name = nil
    price = nil

    doc.css(DISH_CONTAINER).each do |dish|
      name = dish.css(DISH_NAME)&.text&.strip
      price = dish.css(DISH_PRICE)&.text&.strip

      unless name&.empty? || price&.empty? then
        menu << [ name.dup, price.dup ]
      end
    end

    menu.sort
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
