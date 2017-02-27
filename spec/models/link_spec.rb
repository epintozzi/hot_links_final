require 'rails_helper'

RSpec.describe Link, type: :model do
  describe "validation" do
    it "is invalid without url" do
      link = Link.create()
      expect(link).to be_invalid
    end
    it "is valid with required attributes" do
      link = Link.create(url: "http://google.com")
      expect(link).to be_valid
    end
    it "is valid with non-required attributes" do
      link = Link.create(url: "http://google.com", title: "Google")
      expect(link).to be_valid
    end
  end
end
