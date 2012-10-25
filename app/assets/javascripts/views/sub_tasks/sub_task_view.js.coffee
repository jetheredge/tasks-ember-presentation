TasksEmber.SubTaskView = Ember.View.extend({
  templateName: 'sub_tasks/sub_task'
  tagName: 'form'
  submit: (event) ->
    subTask = @get('context')
    @get('controller').save()
    subTask.addObserver('isSaving', (sender, key) =>
      if sender.get(key) == false && sender.get('isDirty') == false
        @get('controller.target').send('goBack')
    )
  cancel: (event) ->
    @get('controller').rollback()
    @get('controller.target').send('goBack')

  didInsertElement: () ->
    @$(".autofocus").focus()
})
