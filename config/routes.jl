using Genie.Router
using TasksController
using BooksController

route("/") do
  serve_static_file("/welcome.html")
end

route("/tasks", TasksController.index, named = :get_tasks)
route("/tasks/new", TasksController.new, named = :new_task)
route("/tasks/create", TasksController.create, method = GET, named = :create_task)
route("/tasks/update", TasksController.update, method = GET, named = :update_task)
