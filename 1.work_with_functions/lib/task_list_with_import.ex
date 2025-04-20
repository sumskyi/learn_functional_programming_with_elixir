defmodule TaskListWithImport do
  import File, only: [write: 3, read: 1]

  @filename "task_list.md"

  def add(task_name) do
    task = "[ ] " <> task_name <> "\n"
    write(@filename, task, [:append])
  end

  def show_list do
    read(@filename)
  end
end
