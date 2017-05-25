  class TripPolicy < ApplicationPolicy
    class Scope < Scope

      def index?
        true
      end

      def resolve
        if user.admin?
          scope.all
        else
          scope.where(user: user)
        end
      end

    end
  end
