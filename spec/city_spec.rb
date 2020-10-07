require 'spec_helper'

describe 'City' do
  
  describe('.all') do
    it("returns an empty array when there are no cities") do
      expect(City.all).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a city") do
      city = City.new({:name => "Red City", :id => nil})
      city.save()
      city2 = City.new({:name => "Blue City", :id => nil})
      city2.save()
      expect(City.all).to(eq([city, city2]))
    end
  end

  describe('.clear') do
    it("clears all cities") do
      city = City.new({:name => "Red City", :id => nil})
      city.save()
      city2 = City.new({:name => "Blue City", :id => nil})
      city2.save()
      City.clear
      expect(City.all).to(eq([]))
    end
  end

  # describe('#==') do
  #   it("is the same city if it has the same attributes as another city") do
  #     city = City.new({:name => "Red City", :id => nil})
  #     city2 = City.new({:name => "Red City", :id => nil})
  #     expect(city).to(eq(city2))
  #   end
  # end

  # describe('.find') do
  #   it("finds a city by id") do
  #     city = City.new({:name => "Red City", :id => nil})
  #     city.save()
  #     city2 = City.new({:name => "Blue City", :id => nil})
  #     city2.save()
  #     expect(City.find(city2.id)).to(eq(city2))
  #   end
  # end

  # describe('#update') do
  #   it("updates a city by id") do
  #     city = City.new({:name => "Red City", :id => nil})
  #     city.save()
  #     city.update("Blue City")
  #     expect(city.name).to(eq("Blue City"))
  #   end
  # end

  # describe('#delete') do
  #   it("deletes a city by id") do
  #     city = City.new({:name => "Red City", :id => nil})
  #     city.save()
  #     city2 = City.new({:name => "Blue City", :id => nil})
  #     city2.save()
  #     city.delete()
  #     expect(City.all).to(eq([city2]))
  #   end
  # end
end