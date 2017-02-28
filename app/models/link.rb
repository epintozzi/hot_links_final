class Link < ApplicationRecord
  validates :url, presence: true

  def self.hottest_links
    where('created_at > ?', 24.hours.ago).group(:url).count.sort_by{ |k, v| v }.reverse.first(10)
  end

end
