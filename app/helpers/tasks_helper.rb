module TasksHelper
  def user_task? user,task
     @list = List.where("user_id=#{user.id}").where("task_id=#{task.id}")
  if @list.count == 0
       true
  else
       false
  end
end
end
