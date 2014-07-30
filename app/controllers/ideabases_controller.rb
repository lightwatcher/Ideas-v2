class IdeabasesController < ApplicationController

  def index
    @ideabases = Ideabase.all
  end

  def show
    @ideabase = Ideabase.find_by(id: params[:id])
  end

  def new
  end

  def create
    @ideabase = Ideabase.new
    @ideabase.idea = params[:idea]

    if @ideabase.save
      redirect_to "/ideabases/#{ @ideabase.id }"
    else
      render 'new'
    end
  end

  def edit
    @ideabase = Ideabase.find_by(id: params[:id])
  end

  def update
    @ideabase = Ideabase.find_by(id: params[:id])
    @ideabase.idea = params[:idea]

    if @ideabase.save
      redirect_to "/ideabases/#{ @ideabase.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @ideabase = Ideabase.find_by(id: params[:id])
    @ideabase.destroy


    redirect_to "/ideabases"
  end
end
