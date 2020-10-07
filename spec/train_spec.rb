require 'spec_helper'

describe 'Doctor' do
  
  describe ('.all') do
    it("returns an empty array when there are no do trains") do
      expect(Train.all).to(eq([]))
    end
  end
end