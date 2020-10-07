require 'spec_helper'

describe 'Train' do
  
  describe('.all') do
    it("returns an empty array when there are no trains") do
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

  describe('.clear') do
    it("clears all trains") do
      train = Train.new({:name => "Red Train", :id => nil})
      train.save()
      train2 = Train.new({:name => "Blue Train", :id => nil})
      train2.save()
      Train.clear
      expect(Train.all).to(eq([]))
    end
  end

  describe('#==') do
    it("is the same train if it has the same attributes as another train") do
      train = Train.new({:name => "Red Train", :id => nil})
      train2 = Train.new({:name => "Red Train", :id => nil})
      expect(train).to(eq(train2))
    end
  end

  describe('.find') do
    it("finds a train by id") do
      train = Train.new({:name => "Red Train", :id => nil})
      train.save()
      train2 = Train.new({:name => "Blue Train", :id => nil})
      train2.save()
      expect(Train.find(train2.id)).to(eq(train2))
    end
  end

  describe('#update2') do
    it("updates a train by id") do
      train = Train.new({:name => "Red Train", :id => nil})
      train.save()
      train.update2("Blue Train")
      expect(train.name).to(eq("Blue Train"))
    end
  end

  describe('#delete') do
    it("deletes a train by id") do
      train = Train.new({:name => "Red Train", :id => nil})
      train.save()
      train2 = Train.new({:name => "Blue Train", :id => nil})
      train2.save()
      train.delete()
      expect(Train.all).to(eq([train2]))
    end
  end
end