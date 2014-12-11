class SkillsController < ApplicationController
	def new
		@skill = Skill.new
	end

	def create
		@skill = Skill.new(occupation_params)

		if @skill.save
			redirect_to root_path
		else
			flash[:notice] = @skill.errors.full_message.to_sentence
			render :new
		end
	end

	private

	def skill_params
		params.require(:skill).permit(:title, :user_id)
	end


		
	end