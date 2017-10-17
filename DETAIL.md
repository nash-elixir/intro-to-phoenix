# Phoenix Details

[Documentation](https://hexdocs.pm/phoenix/overview.html)

## Phoenix Pipeline

```elixir
request
|> endpoint     # configuration & foundation plugs
|> router       # plug pipeline & routing
|> controllers  # request handling functions
|> views        # render templates & template helpers
|> templates    # html templating
```

## Library Components

### [Cowboy](https://github.com/ninenines/cowboy)

Erlang web server framework.

Handles the messy details.

### [Plug](https://github.com/elixir-plug/plug)

Composable functions to process a core connection struct.

### [Ecto](https://github.com/elixir-ecto/ecto)

Database wrapper with sql query style macros and data validation tools.

### [Channels / PubSub](https://hexdocs.pm/phoenix/channels.html)

PubSub is the foundation of the channel layer with third-party support.

Channels handle events between client and server, allowing for soft real-time communication.

## Not An ORM

Application structs are separate from the data stored in the database.

Ecto gives schemas to map structs to the database instead of models that abstract the mapping.

Migrations are fully supported but not defined automatically.

## Application Separation

In larger projects, Phoenix is designed to be a separate application inside of the umbrella application.

Business logic can be kept separate from the api layer.
