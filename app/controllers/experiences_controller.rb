class ExperiencesController < ApplicationController

	def new
		@experience = Experience.new
	end

	def create
		@experience = Experience.new(experience_params)
 
  		if @experience.save
  			redirect_to @experience
  		else
  			render 'new'
  		end
	end

	def show
  		@experience = Experience.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @experience }
        format.xml { render xml: @experience }
      end
	end

	def index
  		@experiences = Experience.all.order(:start_date).paginate(:page => params[:page])

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @experiences }
        format.xml { render xml: @experiences }
      end
	end

	def edit
  		@experience = Experience.find(params[:id])
	end

	def update
  		@experience = Experience.find(params[:id])
 
  		if @experience.update(experience_params)
    		redirect_to @experience
  		else
    		render 'edit'
  		end
	end

	def destroy
  		@experience = Experience.find(params[:id])
  		@experience.destroy
 
  		redirect_to experiences_path
	end

	private
  		def experience_params
    		params.require(:experience).permit(:company, :position, :start_date, :end_date, :city, :state, :summary)
  		end

end
