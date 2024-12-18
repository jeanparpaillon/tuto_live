defmodule TutoLiveWeb.Router do
  use TutoLiveWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TutoLiveWeb do
    pipe_through :api
  end
end
