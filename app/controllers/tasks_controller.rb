class TasksController < ApplicationController
   before_action :authenticate_user!
   before_action :listTasks
   before_action :find_task, only: [:show]

   def show
     @lists =  List.where(task: @task.id).where( done: true)
    #@users_completed = User.joins(:tasks, :lists)
    #                       .select('users.email, users.name, users.photo, tasks.name')
    #                       .distinct.where("lists.done = true and tasks.id = ?", @tasks.id)

    @ranking = User.joins(:tasks, :lists)
                   .select('users.photo, tasks.name, users.email, lists.created_at')
                   .distinct.where("lists.done = true and tasks.id = ?", @task.id)
                   .order('created_at ASC').limit(5)
   end

   def index
    @tasks = Task.all
   end

   private
     def find_task
      @task = Task.find(params[:id])
     end


     def listTasks
      # lista tareas hechas por el usuario
      @listhechas= List.where(user_id: current_user.id, done: true).count
      # Total de las tareas existentes
      @TaskTotal= Task.all.count
     end

end
