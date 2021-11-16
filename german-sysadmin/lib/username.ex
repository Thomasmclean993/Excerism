defmodule Username do
  def sanitize(username) when username == '', do: username

  def sanitize(username) do
    Enum.map()

    # ä becomes ae
    # ö becomes oe
    # ü becomes ue
    # ß becomes ss

    # Please implement the sanitize/1 function
  end
end
