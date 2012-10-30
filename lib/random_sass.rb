require "random_sass/version"

require "compass"

base_directory = File.join(File.dirname(__FILE__))
Compass::Frameworks.register('random_sass', :path => base_directory)

module Sass::Script::Functions
	module RandomSass

		def uniform(p_min,p_max)

			assert_type p_min, :Number
			assert_type p_max, :Number
			assert_same_unit p_max, p_min

			n_max = [p_max.value,p_min.value].max
			n_min = [p_max.value,p_min.value].min

			out_value = n_min + Random.rand(n_max-n_min)

			Sass::Script::String.new("#{out_value}#{p_max.unit_str}")
		end

		def normal(p_mean,p_std)
			assert_type p_mean, :Number
			assert_type p_std, :Number

			u = Random.rand(100000)/100000
			v = Random.rand(100000)/100000
			w = u*u + v*v

		end

		def assert_same_unit(value1, value2, name = nil)
			return if value1.unit_str == value2.unit_str
			err = "#{value1} has different units than #{value2}"
			err = "$#{name}: " + err if name
			raise ArgumentError.new(err)
		end

	end

	include RandomSass
end

