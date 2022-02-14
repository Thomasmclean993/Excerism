defmodule Palace.Tresury do
  use GenServer
@moduledoc """
With Genserver behavior now being required, we can not use callbacks for specfific cases
Callback -> What is does, {what is usually returned}
init(state) -> initializes the server, {:ok, state}
handle_cast(pid, message) -> An async call that doesn't demand an answer from the server, {:noreply, state}
handle_call(pid, from, message) -> A synchronous call that demands an answer from server, {:reply, reply, state}
"""
#cilent ->
def open() do
  Genserver.start_link(__MODULE__, 0, name: __MODULE__) # start the Genserver process
end

def store(amount) do
  GenServer.cast(__MODULE__, {:store, amount}) # sends a asynchronous request to the server
end

def withdraw(amount) do
  Genserver.cast(__MODULE__, {:withdraw, amount}) #
end

def get_balance() do
  Genserver.call (__MODULE__, :balance) # sends a sychronous request to the server and waits for a reply
end




#callbacks
def inti(balance) do
    {:ok, balance}
  end

  def handle_cast({:store, amount}, balance) do
    {:noreply, balance + amount}
  end

  def handle_cast({:withdraw, amount}, balance) do
    {:noreply, balance - amount}
  end

  def handle_call(:balance, _from, balance) do
    {:reply, balance, balance}
  end

end
