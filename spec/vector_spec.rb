require 'spec_helper'

require_relative '../vector3d.rb'

describe Vector3D do
	
	describe "construction" do

		context "when given coordinate values" do

			let (:x) { 1 }
			let (:y) { 2 }
			let (:z) { 3 }

			before(:each) do
				vector = Vector3D.new(x, y, z)
			end

			it "has the given X, Y, Z coordinate values" do
				expect(vector.x).to eq x
				expect(vector.y).to eq y
				expect(vector.z).to eq z
			end

		end

		context "when no values are passed in" do
			
			before(:each) do
				vector = Vector3D.new
			end

			it "has all coordinates set to 0" do
				expect(vector.x).to eq 0
				expect(vector.y).to eq 0
				expect(vector.z).to eq 0
			end

		end

	end

	describe "magnitude" do

		# given a vector

		# when i call #magnitude

		# then it returns the vector's magnitude
		# (should I build a vector from given coordinates?)

		it "gets the magnitude of the vector" do
			
		end
	end

	describe "square magnitude" do

		# given a vector

		# when i call #square_magnitude

		# then it returns the vector's square_magnitude
		# (should I build a vector from given coordinates?)

		it "gets the square magnitude of the vector" do
			
		end
	end

	describe "normalize" do

		# given a non-zero vector

		let(:non_zero_vector) { FactoryGirl.create(:vector, :non_zero) }

		# when i call #normalize

		# then that vector turns into a vector of unit length
		# (is this mutative, or non-mutative?)

		it "turns a non-zero vector into a vector of unit length" do

		end
	end

end