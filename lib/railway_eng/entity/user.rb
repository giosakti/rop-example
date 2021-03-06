module RailwayEng
  module Entity
    module Types
      include Dry::Types.module
    end

    class User < Dry::Struct
      constructor_type :schema

      attribute :id, Types::Strict::Int
      attribute :username, Types::Strict::String
      attribute :signed_in, Types::Strict::Bool

      def signed_in?
        signed_in
      end
    end
  end
end
