# frozen_string_literal: true

module Helpers
  module Tasks
    def print_attributes
      attrs = {}

      # instance_variables returns an array of object’s instance variables.
      # instance_variable_get returns the value of the instance variable, given the variable name.
      instance_variables.each do |var|
        attrs[var.to_s.delete('@')] = instance_variable_get(var)
      end

      attrs
    end
  end
end
