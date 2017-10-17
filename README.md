# Intro To Phoenix

## Prerequisites
[Full Phoenix Installation Guide](https://hexdocs.pm/phoenix/installation.html)

---

1. [Elixir](https://elixir-lang.org/install.html) It may be necessary to install Erlang manually.
2. [Hex](https://hexdocs.pm/phoenix/installation.html#elixir-1-4-or-later)
```bash
mix local.hex
```
3. [Phoenix Archive](https://hexdocs.pm/phoenix/installation.html#phoenix)
```bash
mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez
```
4. [Local Postgres](https://wiki.postgresql.org/wiki/Detailed_installation_guides)
```bash
nohup postgres >logfile 2>&1 </dev/null &
```
```bash
export PGDATA=$HOME/.pgdata
pg_ctl init
pg_ctl start
```

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
