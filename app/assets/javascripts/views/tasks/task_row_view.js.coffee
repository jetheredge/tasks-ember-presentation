TasksEmber.TaskRowView = Ember.View.extend({
  templateName: 'tasks/task_row'
  deleteTask: (event, task) ->
    event.preventDefault()
    task = @get('context')
    @get("controller").delete(task)
})
