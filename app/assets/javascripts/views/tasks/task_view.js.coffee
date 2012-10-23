TasksEmber.TaskView = Ember.View.extend({
  templateName: 'tasks/task'
  tagName: 'form'
  submit: (event) ->
    @get('controller').save()
    @get('controller.target').send('goBack')

  didInsertElement: () ->
    @$(".autofocus").focus()
})
