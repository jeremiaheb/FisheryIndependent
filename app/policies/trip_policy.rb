  class TripPolicy < ApplicationPolicy
    class Scope < Scope

      def index?
        true
      end

      def resolve
        if user.admin?
          scope.all
        elsif user.manager?
          scope.where( "user_id=? OR manager_id=?", user, user.manager_id )
        else
          scope.where(user: user)
        end
      end

    end
  end
