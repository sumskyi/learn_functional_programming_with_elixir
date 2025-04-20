defmodule TaskList do
  @filename "task_list.md"

  def add(task_name) do
    task = "[ ] " <> task_name <> "\n"
    File.write!(@filename, task, [:append])
  end

  def show_list do
    File.read(@filename)
  end
end
