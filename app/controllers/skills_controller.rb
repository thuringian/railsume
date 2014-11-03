class SkillsController < ApplicationController

	def new
		@skill = Skill.new
	end

	def create
		@skill = Skill.new(skill_params)
 
  		if @skill.save
  			redirect_to @skill
  		else
  			render 'new'
  		end
	end

	def show
  		@skill = Skill.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @skill }
        format.xml { render xml: @skill }
      end
	end

	def index
      @skills = Skill.page(params[:page]).order('title')

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @skills }
        format.xml { render xml: @skills }
      end
	end

	def edit
  		@skill = Skill.find(params[:id])
	end

	def update
  		@skill = Skill.find(params[:id])
 
  		if @skill.update(skill_params)
    		redirect_to @skill
  		else
    		render 'edit'
  		end
	end

	def destroy
  		@skill = Skill.find(params[:id])
  		@skill.destroy
 
  		redirect_to skills_path
	end

	private
  		def skill_params
    		params.require(:skill).permit(:title, :description, :image)
  		end

end
