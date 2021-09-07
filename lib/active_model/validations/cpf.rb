# frozen_string_literal: true

module ActiveModel
  module Validations
    class CpfValidator < EachValidator
      def validate_each(record, attr_name, value)
        record.errors.add(attr_name, :cpf, **options) unless CPF.valid?(value)
      end
    end
  end
end
