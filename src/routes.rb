require "./controllers/BookingsController"

module Routes 
    def self.dispatch(choice)
        case choice
        when 1
            BookingsController::create
        # when 2 
        end
    end
end