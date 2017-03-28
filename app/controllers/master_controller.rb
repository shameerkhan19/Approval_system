class MasterController < ApplicationController
  def index
  end

  def create
    object = Final.new
    action =""
     params.each do|i,j|
       if i == "final"
         j.each do |k,v|
           if k == "venuename"
             object.venue_name = v
           elsif k == "venue_address"
             object.venue_address = v
           elsif k == "venue_ownername"
             object.venue_ownername = v
           end
          end
       end
       if i == "commit"
         action = j
       end
     end
     if action == "Approve"
      object.save
    end
   end
end

def approve;end
