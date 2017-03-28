class HomeController < ApplicationController
    def index; end

    def create
        object = Draft.new
        @file = object
        object.venue_name = params[:venueName]
        object.venue_address = params[:venueAddress]
        object.venue_ownername = params[:ownerName]
        puts object.venue_address
        if doesitExist(object) == false
          object.save
        else
          tempObject = Draft.find_by venue_name: object.venue_name
          if tempObject.venue_address == ""
            tempObject.venue_address = object.venue_address
            tempObject.save
          elsif tempObject.venue_ownername == ""
            tempObject.venue_ownername = object.venue_ownername
            tempObject.save
          end
        end
        redirect_to '/home'
    end

      def draftdb;end

      def master;end

    private

    def doesitExist(object)
        name = Draft.find_by venue_name: object.venue_name.to_s
        if name.nil?
            return false
        else
            return true
        end
    end
end
