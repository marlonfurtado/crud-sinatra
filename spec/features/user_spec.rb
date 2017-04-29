require 'spec_helper'
require './app/controllers/contact_controller'

describe Contact do
  describe "#page" do
    it "test a contact" do
      expect(@contact).to be nil
    end
  end
end
