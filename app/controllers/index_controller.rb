# frozen_string_literal: true

class IndexController < ApplicationController
  def health
    Link.count
    head :no_content
  end
end
