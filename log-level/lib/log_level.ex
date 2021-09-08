defmodule LogLevel do
  # Please implement the to_label/2 function
  def to_label(level, legacy?) do
    case {level, legacy?}  do
      {0, true} -> :unknown
      {0, false} -> :trace
      {1, _} -> :debug
      {2, _} -> :info
      {3, _} -> :warning
      {4, _} -> :error
      {5, false} -> :fatal
      _ -> :unknown
    end
  end


  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
  result = to_label(level, legacy?)
    case {result, legacy?} do
      {:fatal, _} -> :ops
      {:error, _} -> :ops
      {:unknown, false} -> :dev2
      {:unknown, true}-> :dev1
      _ -> nil
    end
  end


end
