module TasksController
using Genie.Renderer
using Genie.Router
using SearchLight
using Tasks

function index()
  html!(:tasks, :tasks, tasks = SearchLight.all(Tasks.Task))
end

function new()
  html!(:tasks, :new)
end

function create()
  Tasks.Task(content = @params(:task_content), done = false) |> save && redirect_to(:get_tasks)
end

function edit()
  # html!(:tasks, :edit, task = SearchLight.find_one(Tasks.Task, @params:(:task_id)))
end

function update()
  Tasks.Task(id = @params(:task_id), done = @params:(:task_done)) |> save && redirect_to(:get_tasks)
end

end
