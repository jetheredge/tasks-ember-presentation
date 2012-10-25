TasksEmber.TaskRowView = Ember.View.extend({
  templateName: 'tasks/task_row'
  deleteTask: (event) ->
    event.preventDefault()
    task = @get('context')
    @get("controller").delete(task)

  addSubTask: (event) ->
    task = @get('context')
    @get("controller").addNewSubTask(task)
})
