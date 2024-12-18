defmodule TutoLiveWeb.HelloController do
  @moduledoc false
  use TutoLiveWeb, :controller


  def fortune(conn, _params) do
    {content, 0} = System.cmd("fortune", [])

    conn
    |> put_status(:ok)
    |> text(content)
  end
end
