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

end
