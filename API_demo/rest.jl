using Genie
import Genie.Router: route
import Genie.Renderer: json!
using Genie.Requests

Genie.config.run_as_server = true
todo = []

route("/todo", method = "GET") do
    message = join(todo, ", ")
    (:message => message) |> json!
end

route("/todo", method = "POST") do
    message = jsonpayload()
    push!(todo, (message["todo"],message["day"]))
    (:message => "POST success") |> json!
end

Genie.AppServer.startup()
