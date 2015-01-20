defmodule ContactFormMicroService.SavvyshotsController do
  use Phoenix.Controller
  plug :action

  def contact(conn, params) do
    email = Mailer.compose_email(params["email"], "savannah@savvyshots.com", "New Contact", "email", [params: params])
    response = Mailer.send(email)
    json conn, JSON.encode!(params)
  end
end
