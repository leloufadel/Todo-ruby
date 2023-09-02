# Initialize an empty array to store tasks
tasks = []

# Define a method to display the list of tasks
def list_tasks(tasks)
  puts "To-Do List:"
  tasks.each_with_index do |task, index|
    status = task[:done] ? "[X]" : "[ ]"
    puts "#{index + 1}. #{status} #{task[:name]}"
  end
end

# Define a method to add a task
def add_task(tasks, name)
  tasks << { name: name, done: false }
end

# Define a method to mark a task as completed
def complete_task(tasks, index)
  tasks[index][:done] = true
end

# Define a method to delete a task
def delete_task(tasks, index)
  tasks.delete_at(index)
end

# Main application loop
loop do
  puts "\nOptions:"
  puts "1. Add Task"
  puts "2. List Tasks"
  puts "3. Mark Task as Completed"
  puts "4. Delete Task"
  puts "5. Exit"
  print "Select an option: "

  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter task name: "
    task_name = gets.chomp
    add_task(tasks, task_name)
  when 2
    list_tasks(tasks)
  when 3
    list_tasks(tasks)
    print "Enter the task number to mark as completed: "
    task_index = gets.chomp.to_i - 1
    complete_task(tasks, task_index) if task_index >= 0 && task_index < tasks.length
  when 4
    list_tasks(tasks)
    print "Enter the task number to delete: "
    task_index = gets.chomp.to_i - 1
    delete_task(tasks, task_index) if task_index >= 0 && task_index < tasks.length
  when 5
    break
  else
    puts "Invalid option. Please try again."
  end
end
