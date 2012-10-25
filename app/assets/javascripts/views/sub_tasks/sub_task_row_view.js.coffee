TasksEmber.SubTaskRowView = Ember.View.extend({
  templateName: 'sub_tasks/sub_task_row'
  tagName: 'tr'
  doubleClick: (event) ->
    event.preventDefault()
    subTask = @get('context')
    subTask.set('editing', true)
  save: (event) ->
    event.preventDefault()
    @get('controller').save()
    subTask = @get('context')
    subTask.set('editing', false)
})
