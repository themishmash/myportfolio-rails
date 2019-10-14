class ContactformController < ApplicationController
  def index
    @contactforms = Contactform.all
    @contactform = Contactform.new

  end

  def create
    @contactform = Contactform.create(contactform_params)
    redirect_to contactforms_thanks_path(id: @contactform.id)
  end 

  def thank_you_page
    @contactform = Contactform.find(params[:id])
  end 

  def show
  end

  def edit
  end

  def new
  end

  private
  def contactform_params
    params.require(:contactform).permit(:name, :email, :message)
  end 
end
