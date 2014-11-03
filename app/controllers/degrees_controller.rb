class DegreesController < ApplicationController

	def new
		@degree = Degree.new
	end

	def create
		@degree = Degree.new(degree_params)
 
  		if @degree.save
  			redirect_to @degree
  		else
  			render 'new'
  		end
	end

	def show
  		@degree = Degree.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @degree }
        format.xml { render xml: @degree }
      end
	end

	def index
      @degrees = Degree.page(params[:page]).order('year')

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @degrees }
        format.xml { render xml: @degrees }
      end
	end

	def edit
  		@degree = Degree.find(params[:id])
	end

	def update
  		@degree = Degree.find(params[:id])
 
  		if @degree.update(degree_params)
    		redirect_to @degree
  		else
    		render 'edit'
  		end
	end

	def destroy
  		@degree = Degree.find(params[:id])
  		@degree.destroy
 
  		redirect_to degrees_path
	end

	private
  		def degree_params
    		params.require(:degree).permit(:school, :title, :major, :honors, :year, :image)
  		end

end
