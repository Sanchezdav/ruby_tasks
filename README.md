# Tasks Project with Ruby

This is a Ruby project for a Task Manager, where you can create two types, the ToDo Task and the Deadline Task. You can add tasks to the Task Manager, complete them, and delete them. You can also list with all the details like title, description and status.

## Built With

- Ruby 3.2.2
- Minitest
- Rake

## Getting Started

After cloning the project, run the following:

```bash
> cd ruby_tasks

# Install dependencies
> gem install bundler && bundle install

# Run the tests
> rake test
# or
> rake

# Run all the task files

### Run the task manager
> rake task:manager

### Run the task item
> rake task:item

### Run the todo task
> rake task:todo

### Run the deadline task
> rake task:deadline

# Run the linter
> rake lint
```
