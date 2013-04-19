class ParapluiesController < ApplicationController

  before_filter :load_parapluie, :only => [:show, :edit, :update, :destroy, :handle]

  def load_parapluie
    @parapluie = Parapluie.find(params[:id])
  end

  def index
    @parapluies = Parapluie.all
    @name = "Dan"
  end

  def new
    @parapluie = Parapluie.new
  end

  def create
    if @parapluie.save
      redirect_to @parapluie, notice: 'Parapluie was successfully created.' 
    else
      render action: "new"
    end
  end

  def update
    if @parapluie.update_attributes(params[:parapluie])
      redirect_to @parapluie, notice: 'Parapluie was successfully updated.'
    else
      render action: "edit"
    end  
  end

  def destroy
    @parapluie.destroy
    redirect_to parapluies_url
  end
end
