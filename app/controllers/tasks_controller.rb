class TasksController < ApplicationController
    before_action :set_member, :set_all_tasks
    before_action :set_member_task, only: [:show, :update, :destroy]
  
    # GET /members/:member_id/tasks
    def index
      json_response(@member.tasks)
    #   json_response(@tasks) #show all tasks
    end
  
    # GET /members/:member_id/tasks/:id
    def show
      json_response(@task)
    end
  
    # POST /members/:member_id/items
    def create
      @member.tasks.create!(task_params)
      json_response(@member, :created)
    end
  
    # PUT /members/:member_id/items/:id
    def update
      @task.update(task_params)
      head :no_content
    end
  
    # DELETE /members/:member_id/items/:id
    def destroy
      @task.destroy
      head :no_content
    end
  
    private
    
    # Check params 
    def task_params
      params.permit(:title, :done)
    end
    
    # Get member by ID
    def set_member
      @member = Member.find(params[:member_id])
    end

    # Get all tasks 
    def set_all_tasks
        @tasks = Task.all
    end
    
    # Get task from member by ID
    def set_member_task
      @task = @member.tasks.find_by!(id: params[:id]) if @member
    end
end
