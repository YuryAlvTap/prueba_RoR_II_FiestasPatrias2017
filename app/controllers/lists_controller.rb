class ListsController < ApplicationController
  before_action :authenticate_user!

  def index
      @lists = current_user.lists
  end

  def create
    @task = Task.find(params[:task_id])
    @list = List.new(task: @task, user: current_user, done: true)
    if @list.save
       redirect_to tasks_path, notice: 'la tarea ha sido ingresada'
    else
       redirect_to tasks_path, alert: 'la tarea no ha sido ingresada'
    end
  end

  def desmarcar
    @list = List.where("user_id=#{current_user.id}").where("task_id=#{params[:tasks_id]}").first
    unless @list.nil?
     @list.destroy
    end
     redirect_to tasks_path, alert: 'la tarea ha sido desmarcada'
  end


end
