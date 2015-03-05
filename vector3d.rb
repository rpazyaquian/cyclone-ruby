class Vector3D
	attr_accessor :x, :y, :z

	# for operator overloading
	def coerce(other)
		return self, other
	end

	def initialize(x = nil, y = nil, z = nil)
		@x = x || 0
		@y = y || 0
		@z = z || 0
	end

	def invert
		@x = 0 - @x
		@y = 0 - @y
		@z = 0 - @z
		self
	end

	def square_magnitude
		x**2 + y**2 + z**2
	end

	def magnitude
		sqrt(square_magnitude)
	end

	def normalize!
		# "turn non-zero vector into vector of unit length"
		l = magnitude

		if l > 0
			multiply_by_scalar(1 / l)
		end
	end

	def multiply_by_scalar(scalar)
		new_x = @x * scalar
		new_y = @y * scalar
		new_z = @z * scalar
		self.class.new(new_x, new_y, new_z)
	end

	def multiply_by_scalar!(scalar)
		@x = @x * scalar
		@y = @y * scalar
		@z = @z * scalar
		self
	end

	# potential operator overloading approach

	# def *(other)
	# 	if other.is_a?(Numeric)
	# 		return self.class.new(@x*other, @y*other, @z*other)
	# 	end
	# end

	def add_vector(vector)
		new_x += vector.x
		new_y += vector.y
		new_z += vector.z
		self.class.new(new_x, new_y, new_z)
	end

	def add_vector!(vector)
		@x += vector.x
		@y += vector.y
		@z += vector.z
		self
	end

	def subtract_vector(vector)
		new_x -= vector.x
		new_y -= vector.y
		new_z -= vector.z
		self.class.new(new_x, new_y, new_z)
	end

	def subtract_vector!(vector)
		@x -= vector.x
		@y -= vector.y
		@z -= vector.z
		self
	end

end



# vector = Vector.new(1, 1, 1)

# scalar = 3

# vector_by_scalar = vector.multiply_by_scalar(scalar)
# mutated_vector_by_scalar = vector.multiply_by_scalar!(scalar)

# puts vector_by_scalar.x
# puts mutated_vector_by_scalar.x
# puts vector.x