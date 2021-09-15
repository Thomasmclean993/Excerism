
defmodule GuessingGame do
  def compare(secret_number) do "Make a guess" end
  def compare(secret_number, :no_guess) do "Make a guess" end
  def compare(secret_number, guess) do
    # Please implement the compare/2 function
    cond do
    secret_number == guess -> "Correct"
    secret_number - guess == -1 -> "So close"
    guess - secret_number == -1 -> "So close"
    secret_number > guess -> "Too low"
    secret_number < guess -> "Too high"
    end
  end
end

# REDO using guards.
