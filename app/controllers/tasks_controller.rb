class TasksController < ApplicationController
	# before_action :find_task, only: [:show, :edit, :update, :destroy]


	def index
		@tasks = Task.all
	end

	def show
		@task = Task.find(params[:id])
	end

	#create methods
	def new
		@task = Task.new
	end

	def create
		@task = Task.create(params[:task].permit(:title, :details))
		redirect_to tasks_path
	end

	# update methods
	def edit
		@task = Task.find(params[:id])
	end

	def update
		@task = Task.find(params[:id])
		@task.update(params[:task].permit(:title, :details, :completed))
		redirect_to tasks_path
	end

	# destroy method
	def destroy
		@task = Task.find(params[:id])
		@task.destroy
		redirect_to tasks_path
	end

	# private
	# def strong_params
	# 	params[:task].permit(:title, :details)
	# end

	# private
	# def find_task
	# 	@task = Task.find(params[:id])
	# end
end


