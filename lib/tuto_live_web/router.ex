defmodule TutoLiveWeb.Router do
  use TutoLiveWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TutoLiveWeb do
    pipe_through :api

    get "/", HelloController, :fortune
  end
end
