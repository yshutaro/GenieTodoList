using Genie.Router
using TasksController
using BooksController

route("/") do
  serve_static_file("/welcome.html")
end

route("/hello") do
  "Hello World"
end

## Sample
route("/echo/:message") do
  @params(:message)
end

route("/sum/:x::Int/:y::Int") do
  @params(:x) + @params(:y)
end

route("/bgbooks", BooksController.billgatesbooks)

## Sample end

route("/tasks", TasksController.index)

