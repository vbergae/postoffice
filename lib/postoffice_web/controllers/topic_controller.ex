defmodule PostofficeWeb.TopicController do
  use PostofficeWeb, :controller

  alias Postoffice.Messaging

  def index(conn, _params) do
    topics = Messaging.list_topics()
    render(conn, "index.html", topics: topics)
  end
end
