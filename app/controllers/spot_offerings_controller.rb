class SpotOfferingsController < ApplicationController
  def index
    matching_spot_offerings = SpotOffering.all

    @list_of_spot_offerings = matching_spot_offerings.order({ :created_at => :desc })

    render({ :template => "spot_offerings/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_spot_offerings = SpotOffering.where({ :id => the_id })

    @the_spot_offering = matching_spot_offerings.at(0)

    render({ :template => "spot_offerings/show.html.erb" })
  end

  def create
    the_spot_offering = SpotOffering.new
    the_spot_offering.offering = params.fetch("query_offering")

    if the_spot_offering.valid?
      the_spot_offering.save
      redirect_to("/spot_offerings", { :notice => "Spot offering created successfully." })
    else
      redirect_to("/spot_offerings", { :alert => the_spot_offering.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_spot_offering = SpotOffering.where({ :id => the_id }).at(0)

    the_spot_offering.offering = params.fetch("query_offering")

    if the_spot_offering.valid?
      the_spot_offering.save
      redirect_to("/spot_offerings/#{the_spot_offering.id}", { :notice => "Spot offering updated successfully."} )
    else
      redirect_to("/spot_offerings/#{the_spot_offering.id}", { :alert => the_spot_offering.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_spot_offering = SpotOffering.where({ :id => the_id }).at(0)

    the_spot_offering.destroy

    redirect_to("/spot_offerings", { :notice => "Spot offering deleted successfully."} )
  end
end
