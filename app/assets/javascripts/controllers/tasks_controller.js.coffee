TasksEmber.TasksController = Ember.ArrayController.extend({
  delete: (task) ->
    task.deleteRecord()
    @store.commit()
  save: () ->
    @store.commit()
  doneUpdated: (() ->
    @store.commit()
  ).observes("@each.done")
})
