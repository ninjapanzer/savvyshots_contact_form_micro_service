defmodule ContactFormMicroService.SavvyshotsController do
  use Phoenix.Controller
  plug :action

  def contact(conn, _params) do
    email = Mailer.compose_email("from@example.com", "to@example.com", "Subject", "email", [name: "baz"])
    response = Mailer.send(email)
    json conn, JSON.encode!(%{name: "Chris"})
  end
end
