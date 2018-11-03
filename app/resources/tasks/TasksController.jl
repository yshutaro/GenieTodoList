module TasksController

using Genie.Renderer,
using SearchLight,
using Tasks

function index()
  html!(:tasks, :tasks, tasks = SearchLight.all(Task))
end

end
