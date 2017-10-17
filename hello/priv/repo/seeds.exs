# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Hello.Repo.insert!(%Hello.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
#
# To fully rebuild the database, including the seeds:
#
#     mix ecto.reset
#

alias Hello.Blog.Post
alias Hello.Blog.Comment
alias Hello.Repo

Repo.insert!(%Post{id: 1, title: "A Big Announcement!", content: "We have working blog posts!"})
Repo.insert!(%Post{id: 2, title: "Many Posts", content: "We can have many posts; it is easy as cake. Err... Pie."})
Repo.insert!(%Post{id: 3, title: "You get the idea", content: "Posts work, etc., etc."})

Repo.insert!(%Comment{id: 1, post_id: 1, text: "First!!"})
Repo.insert!(%Comment{id: 2, post_id: 1, text: "Second!"})
Repo.insert!(%Comment{id: 3, post_id: 1, text: "Third."})
Repo.insert!(%Comment{id: 4, post_id: 1, text: "Fourth.."})
Repo.insert!(%Comment{id: 5, post_id: 2, text: "First Again!"})
Repo.insert!(%Comment{id: 6, post_id: 2, text: "Ok"})
Repo.insert!(%Comment{id: 7, post_id: 2, text: "We get it."})
Repo.insert!(%Comment{id: 8, post_id: 2, text: "I'm not that createive."})
Repo.insert!(%Comment{id: 9, post_id: 2, text: "But, the point is here."})
Repo.insert!(%Comment{id: 10, post_id: 3, text: "All of these comments."})
Repo.insert!(%Comment{id: 11, post_id: 3, text: "Are pretty much."})
Repo.insert!(%Comment{id: 12, post_id: 3, text: "The same thing..."})
