defmodule HighScore do
  @starting_score 0

  def new() do
    %{}
  end

  def add_player(scores, name, score \\ @starting_score) do
    Map.put(scores, name, score)
  end

  def remove_player(scores, name) when scores == %{}, do: %{}

  def remove_player(scores, name) do
    Map.delete(scores, name)
  end

  def reset_score(scores, name, score \\ @starting_score) when scores == %{} do
    Map.put(scores, name, score)
  end

  def reset_score(scores, name, score) do
    Map.replace(scores, name, 0)
  end

  def update_score(scores, name, score) do
    Map.replace(scores, name, score)
  end

  def get_players(scores) do
    Map.keys(scores)
  end
end
