module TasksController
using Genie.Renderer

struct Task
  id::Int
  content::String
  done::Bool
end

const SampleTasks = Task[
  Task(1,"タスク1",false),
  Task(2,"タスク2",true),
  Task(3,"タスク3",false),
]

function index()
  html!(:tasks, :tasks, tasks = SampleTasks)
end

end
