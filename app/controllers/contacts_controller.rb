class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    byebug
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = "Thank you for your message!"
    else
      flash[:alert] = "There was an error processing your message."
    end
    redirect_to contact_path
  end

  private

  private

  def contact_params
    params.permit(:name, :phone, :service, :email, :message)
  end

end
