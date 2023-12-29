defmodule Servy.Handler do

    def handle(request) do
        # conv = parse(request)
        # conv = route(conv)
        # format_response(conv)        

        request 
        |> parse 
        |> log 
        |> route 
        |> format_response
    end

    def log(conv), do: IO.inspect conv

    def parse(request) do
        # TODO: Parse the request string into a map:
        # first_line = request |> String.split("\n") |> List.first
        # [method, path, _] = String.split(first_line, " ")  
        # %{ method: method, path: path, resp_body: "" }

        [method, path, _] =
        request
            |> String.split("\n")
            |> List.first
            |> String.split(" ")

        %{ method: method, path: path, resp_body: "" }
    end

    def route(conv) do
        # TODO: Create a new map that also contains the response body:
        # conv = %{ method: "GET", path: "/wildthings", resp_body: "Bears, Lions, Tigers" }
        # if conv.path == "/wildthings/" do
        #     %{ conv | resp_body: "Bears, Lions, Tigers"}
        # else 
        #     %{ conv | resp_body: "Smokey, Paddington, Yogi"}
        # end
        # %{ conv | resp_body: "Bears, Lions, Tigers"}
        # one ariaty function calling a two ariaty function
        # route(conv, conv.path)
        # one ariaty function calling a three ariaty function
        route(conv, conv.method, conv.path)
    end

    # function clauses
    def route(conv, "GET", "/wildthings") do
        %{ conv | resp_body: "Bears, Lions, Tigers"}
    end

    def route(conv, "GET", "/bears") do
        %{ conv | resp_body: "Smokey, Paddington, Yogi"}
    end

    def format_response(conv) do
        # TODO: Use values in map to create an HTTP response string:
        # """
        # HTTP/1.1 200 OK
        # Content-Type: text/html; charset=utf-8
        # Content-Length: 20

        # Bears, Lions, Tigers
        # """

        """
        HTTP/1.1 200 OK
        Content-Type: text/html; charset=utf-8
        Content-Length: #{String.length(conv.resp_body)}}
        
        #{conv.resp_body}
        """
    end

end

request = """
GET /wildthings HTTP/1.1
Host: example.com
User-Agent: ExampleBrowser/1.0
Accept: */*

"""

response = Servy.Handler.handle(request)
IO.puts response 

request = """
GET /bears HTTP/1.1
Host: example.com
User-Agent: ExampleBrowser/1.0
Accept: */*

"""

response = Servy.Handler.handle(request)
IO.puts response 

request = """
GET /bigfoot HTTP/1.1
Host: example.com
User-Agent: ExampleBrowser/1.0
Accept: */*

"""

response = Servy.Handler.handle(request)
IO.puts response 