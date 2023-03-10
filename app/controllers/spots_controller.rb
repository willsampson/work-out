class SpotsController < ApplicationController

  def index
    matching_spots = Spot.all

    @list_of_spots = matching_spots.order({ :created_at => :desc })

    matching_spot_types = SpotType.all

    @list_of_spot_types = matching_spot_types.order({ :created_at => :desc })

    @matching_cafes = @list_of_spot_types.where({ :category_id => "1"}).all


    render({ :template => "spots/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_spots = Spot.where({ :id => the_id })

    @the_spot = matching_spots.at(0)

    render({ :template => "spots/show.html.erb" })
  end

  def create
    the_spot = Spot.new
    the_spot.region_id = params.fetch("query_region_id")

    if the_spot.valid?
      the_spot.save
      redirect_to("/spots", { :notice => "Spot created successfully." })
    else
      redirect_to("/spots", { :alert => the_spot.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_spot = Spot.where({ :id => the_id }).at(0)

    the_spot.region_id = params.fetch("query_region_id")

    if the_spot.valid?
      the_spot.save
      redirect_to("/spots/#{the_spot.id}", { :notice => "Spot updated successfully."} )
    else
      redirect_to("/spots/#{the_spot.id}", { :alert => the_spot.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_spot = Spot.where({ :id => the_id }).at(0)

    the_spot.destroy

    redirect_to("/spots", { :notice => "Spot deleted successfully."} )
  end
end
