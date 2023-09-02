# let create an empty array to store tasks: 
tasks = []
# let's create a function to add a task 
def add_Task(tasks, name)
tasks << name
end 
# let's ask the user to give an imput 
puts "Give me your to do task"
task_name = gets.chomp
# let add the task giving by the user 
add_Task(tasks, task_name)
# let display the added task
puts "This is your task: "
tasks.each_with_index do |task, index|
    puts "#{index+1}. #{task}"
end