# Intro To Phoenix

### [Prerequisites](PREREQ.md)

## Phoenix New

```bash
mix phx.new hello
cd hello
mix ecto.create
[iex -S] mix phx.server
```

In browser: `http://localhost:4000`

## Add A Page

### Generate The Resource Code

```bash
mix phx.gen.html Blog Post posts title:string content:text
```

Note difference defined in migration but not in schema:

`title:string` will be limited to 255 characters

`content:text` will be a standard postgres text field

### Add The Resource To The Router

Add to router under browser pipeline:
```elixir
resources "/posts", PostController
```

`resources` is shorthand for 8 individual routes:

```elixir
get    /posts,          PostController, :index
get    /posts/:id,      PostController, :show
get    /posts/new,      PostController, :new
get    /posts/:id/edit, PostController, :edit
post   /posts,          PostController, :create
patch  /posts/:id,      PostController, :update
put    /posts/:id,      PostController, :update
delete /posts/:id,      PostController, :delete
```

### Migrate To Update The Database

```bash
mix ecto.migrate
```

### Explore The Endpoint

Start the server

```bash
[iex -S] mix phx.server
```

Navigate to `http://localhost:4000/posts`

## Add Another Page

Generate:
```bash
mix phx.gen.html Blog Comment comments message:text post_id:references:post
```

Add route:
```elixir
resources "/comments", CommentController
```
Migrate:
```bash
mix ecto.migrate
```

Start:
```bash
[iex -S] mix phx.server
```

### [More Detail](DETAIL.md)
