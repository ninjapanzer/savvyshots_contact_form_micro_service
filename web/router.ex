defmodule ContactFormMicroService.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :service do
    plug :accepts, ~w(html)
    plug :fetch_session
    plug :fetch_flash
  end

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/", ContactFormMicroService do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/savvyshots", ContactFormMicroService do
    pipe_through :service
    get "contact", SavvyshotsController, :contact
    post "contact", SavvyshotsController, :contact
    put "contact", SavvyshotsController, :contact
  end

  # Other scopes may use custom stacks.
  # scope "/api", ContactFormMicroService do
  #   pipe_through :api
  # end
end
