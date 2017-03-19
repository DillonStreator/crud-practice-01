class GuitarsController < ApplicationController
  def index
    @guitars = Guitar.all.sort_by {|i| i.name}
    render "guitars.html.erb"
  end
  def new
    render "new.html.erb"
  end
  def create
    guitar = Guitar.new(name: params[:name], strings: params[:strings], image: params[:image], color: params[:color], description: params[:description])
    guitar.save
    redirect_to "/guitars/show/#{guitar.id}"
  end
  def show
    @guitar = Guitar.find_by(id: params[:id])
    render "show.html.erb"
  end
  def edit
    @guitar = Guitar.find_by(id: params[:id])
    render "edit.html.erb"
  end
  def update
    guitar = Guitar.find_by(id: params[:id])
    guitar.name= params[:name]
    guitar.strings= params[:strings]
    guitar.image= params[:image]
    guitar.description= params[:description]
    guitar.color= params[:color]
    guitar.save
    redirect_to "/guitars/show/#{guitar.id}"
  end 
  def destroy
    guitar = Guitar.find_by(id: params[:id])
    guitar.destroy
    redirect_to "/guitars"
  end
end
