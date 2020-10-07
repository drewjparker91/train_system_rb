require 'spec_helper'

describe 'Doctor' do
  
  describe('.all') do
    it("returns an empty array when there are no do trains") do
      expect(Train.all).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a train") do
      train = Train.new({:name => "Red Train", :id => nil})
      train.save()
      train2 = Train.new({:name => "Blue Train", :id => nil})
      train2.save()
      expect(Train.all).to(eq([train, train2]))
    end
  end

end