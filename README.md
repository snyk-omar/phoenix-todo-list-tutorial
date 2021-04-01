<div align="center">

# Elixir-Goof (based on the Phoenix Todo List Tutorial)

</div>
<br />

### TodoMVC

In this tutorial
we are using the
[TodoMVC](https://github.com/dwyl/javascript-todo-list-tutorial#todomvc)
CSS to simplify our UI.
This has several advantages
the biggest being _minimising_ how much CSS we have to write!
It also means we have a guide to which _features_
need to be implemented to achieve full functionality.

### Before You Start! 💡

_Before_ you attempt to _build_ the Todo List,
make sure you have everything you need installed on you computer.
See:
[prerequisites](https://github.com/dwyl/phoenix-chat-example#0-pre-requisites-before-you-start)

Once you have confirmed that you have Phoenix & PostgreSQL installed,
try running the _finished_ App.


### 0. Run The _Finished_ App on Your `localhost` 💻

_Before_ you start building your own version of the Todo List App,
run the _finished_ version on your `localhost`
to confirm that it works.

Clone the project from GitHub:

```sh
git clone git@github.com:dwyl/phoenix-todo-list-tutorial.git && cd phoenix-todo-list-tutorial
```

Install dependencies and setup the database:

```sh
mix setup
```

Start the Phoenix server:

```sh
mix phx.server
```

Visit
[`localhost:4000`](http://localhost:4000)
in your web browser.


You should see:

![phoenix-todo-list-on-localhost](https://user-images.githubusercontent.com/194400/83285190-bed5a580-a1d5-11ea-9154-80684cf9cc0e.gif)

Now that you have the _finished_ example app
running on your `localhost`, <br />
let's build it from scratch
and understand all the steps.

If you ran the finished app on your `localhost`
(_and you really should!_), <br />
you will need to change up a directory before starting the tutorial:

```
cd ..
```

Now you are ready to _build_!

## Learning

+ Learn Elixir: https://github.com/dwyl/learn-elixir
+ Learn Phoenix https://github.com/dwyl/learn-phoenix-framework
  + Phoenix Chat Tutorial:
  https://github.com/dwyl/phoenix-chat-example
  + Phoenix LiveView Counter Tutorial:
  https://github.com/dwyl/phoenix-liveview-counter-tutorial
