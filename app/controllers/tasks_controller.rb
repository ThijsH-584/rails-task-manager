class TasksController < ApplicationController
	def index
		@tasks = Task.all
	end

	def list
		@tasks = Task.find(params[:id])
	end
end
