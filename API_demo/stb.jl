using HTTP

base_url = "http://127.0.0.1:8000/todo"
headers = [("Content-Type", "application/json")]
body = """{"todo":"create api", "day":"5/1"}"""

post_request = HTTP.request("POST", base_url, headers, body)
println(post_request.body |> String)


get_request = HTTP.request("GET", base_url, headers, body)

println(replace(get_request.body |> String, "\\\"" => ""))
