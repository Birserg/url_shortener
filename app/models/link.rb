# frozen_string_literal: true

class Link < ApplicationRecord
  validates_presence_of :url, :slug
  validates_uniqueness_of :url, scope: :slug

  validates :url, format: URI::regexp(%w[http https])
end
