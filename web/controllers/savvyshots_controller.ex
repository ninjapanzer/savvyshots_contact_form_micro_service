defmodule ContactFormMicroService.SavvyshotsController do
  use Phoenix.Controller

  plug :action

  def contact(conn, _params) do
    render conn, "contact.html"
  end
end
