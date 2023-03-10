class RegionsController < ApplicationController
  def index
    matching_regions = Region.all

    @list_of_regions = matching_regions.order({ :created_at => :desc })

    render({ :template => "regions/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_regions = Region.where({ :id => the_id })

    @the_region = matching_regions.at(0)

    render({ :template => "regions/show.html.erb" })
  end

  def create
    the_region = Region.new
    the_region.region = params.fetch("query_region")

    if the_region.valid?
      the_region.save
      redirect_to("/regions", { :notice => "Region created successfully." })
    else
      redirect_to("/regions", { :alert => the_region.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_region = Region.where({ :id => the_id }).at(0)

    the_region.region = params.fetch("query_region")

    if the_region.valid?
      the_region.save
      redirect_to("/regions/#{the_region.id}", { :notice => "Region updated successfully."} )
    else
      redirect_to("/regions/#{the_region.id}", { :alert => the_region.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_region = Region.where({ :id => the_id }).at(0)

    the_region.destroy

    redirect_to("/regions", { :notice => "Region deleted successfully."} )
  end
end
