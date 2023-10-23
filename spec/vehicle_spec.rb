require 'spec_helper'

RSpec.describe Vehicle do
  before(:each) do
    @cruz = Vehicle.new({vin: '123456789abcdefgh', year: 2012, make: 'Chevrolet', model: 'Cruz', engine: :ice, plate_type: nil, registration_date: nil})
    @bolt = Vehicle.new({vin: '987654321abcdefgh', year: 2019, make: 'Chevrolet', model: 'Bolt', engine: :ev, plate_type: nil, registration_date: nil})
    @camaro = Vehicle.new({vin: '1a2b3c4d5e6f', year: 1969, make: 'Chevrolet', model: 'Camaro', engine: :ice, plate_type: nil, registration_date: nil} )
  end

  describe '#initialize' do
    it 'can initialize' do
      expect(@cruz).to be_an_instance_of(Vehicle)
      expect(@cruz.vin).to eq('123456789abcdefgh')
      expect(@cruz.year).to eq(2012)
      expect(@cruz.make).to eq('Chevrolet')
      expect(@cruz.model).to eq('Cruz')
      expect(@cruz.engine).to eq(:ice)
      expect(@cruz.registration_date).to eq(nil)

      expect(@bolt).to be_an_instance_of(Vehicle)
      expect(@bolt.vin).to eq('987654321abcdefgh')
      expect(@bolt.year).to eq(2019)
      expect(@bolt.make).to eq('Chevrolet')
      expect(@bolt.model).to eq('Bolt')
      expect(@bolt.engine).to eq(:ev)
      expect(@bolt.registration_date).to eq(nil)

      expect(@camaro).to be_an_instance_of(Vehicle)
      expect(@camaro.vin).to eq('1a2b3c4d5e6f')
      expect(@camaro.year).to eq(1969)
      expect(@camaro.make).to eq('Chevrolet')
      expect(@camaro.model).to eq('Camaro')
      expect(@camaro.engine).to eq(:ice)
      expect(@camaro.registration_date).to eq(nil)
    end
  end

  describe '#antique?' do
    it 'can determine if a vehicle is an antique' do
      expect(@cruz.antique?).to eq(false)
      expect(@bolt.antique?).to eq(false)
      expect(@camaro.antique?).to eq(true)
    end
  end

  describe '#electric_vehicle?' do
    it 'can determine if a vehicle is an ev' do
      expect(@cruz.electric_vehicle?).to eq(false)
      expect(@bolt.electric_vehicle?).to eq(true)
      expect(@camaro.electric_vehicle?).to eq(false)
    end
  end
end
