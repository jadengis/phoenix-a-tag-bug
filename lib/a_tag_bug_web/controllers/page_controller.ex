defmodule ATagBugWeb.PageController do
  use ATagBugWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    conn
    |> assign(:posts, [
      %{
        title: "Hello friend",
        subtitle: "It's a good day",
        image_url: "https://exmaple.com/image.jpg",
        authors: [
          %{name: "John", url: "https://example.com", image_url: "https://example.com/john.jpg"}
        ],
        date: ~D[2022-11-26]
      },
      %{
        title: "Hello friend 2",
        subtitle: "It's a good day 2",
        image_url: "https://exmaple.com/image.jpg",
        authors: [
          %{name: "John", url: "https://example.com", image_url: "https://example.com/john.jpg"}
        ],
        date: ~D[2022-11-27]
      }
    ])
    |> render(:home, layout: false)
  end
end
