# Append expections we want to route to ActionDispatch's
# ExceptionWrapper.
#
module ActionDispatch
  class ExceptionWrapper
    @@rescue_responses.merge!('Pundit::NotAuthorizedError' => :forbidden)
  end
end
