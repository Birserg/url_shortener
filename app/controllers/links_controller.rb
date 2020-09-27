# frozen_string_literal: true

class LinksController < ApplicationController
  before_action :load_resource, only: [:show, :stats]

  def create
    link = Link.create!(url: params[:url], slug: SecureRandom.uuid[0..5])
    render json: { url: url_for(action: 'show', short_url: link.slug) }
  end

  def stats
    render json: { clicked: @resource.clicked }
  end

  def show
    @resource.update!(clicked: @resource.clicked + 1)
    redirect_to @resource.url
  end

  private

  def load_resource
    @resource = Link.find_by!(slug: params[:short_url])
  end
end
