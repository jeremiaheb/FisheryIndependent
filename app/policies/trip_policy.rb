  class TripPolicy < ApplicationPolicy
    class Scope < Scope

      def resolve
        if user.admin?
          scope.all
        else
          scope.where(index: true)
        end
      end

    end
  end
