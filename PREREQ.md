# Prerequisites
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
