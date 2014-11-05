class ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
 
  		if @contact.save
  			redirect_to @contact
  		else
  			render 'new'
  		end
	end

	def show
  		@contact = Contact.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @contact }
        format.xml { render xml: @contact }
      end
	end

	def index
      @contacts = Contact.page(params[:page]).order('title')

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @contacts }
        format.xml { render xml: @contacts }
      end
	end

	def edit
  		@contact = Contact.find(params[:id])
	end

	def update
  		@contact = Contact.find(params[:id])
 
  		if @contact.update(contact_params)
    		redirect_to @contact
  		else
    		render 'edit'
  		end
	end

	def destroy
  		@contact = Contact.find(params[:id])
  		@contact.destroy
 
  		redirect_to contacts_path
	end

	private
  		def contact_params
    		params.require(:contact).permit(:title, :link, :image)
  		end

end
