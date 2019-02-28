defmodule Sample do
  @moduledoc """
    This is a Sample module to use with iex console on host device. After calling setup, require Logger
    in the `iex>` shell then start to log messages with, `Logger.info/1`, `Logger.debug/1`,
    `Logger.warn/1`, then use `RingLogger` functions to see what is happening.
  """
  require Logger

  # Start a sample Logger to test in iex console
  def setup do
    RingLogger.init(RingLogger)
    Logger.add_backend(RingLogger)
  end

  def log, do: log_samples()
  def save_logs  do
    log_samples()
    {:ok, msg} = RingLogger.write
    msg
  end

  defp log_samples do
    Logger.debug("debug message")
    Logger.info("info message")
    Logger.warn("warn message")
  end
end
