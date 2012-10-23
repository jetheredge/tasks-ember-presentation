TasksEmber.TaskController = Ember.ObjectController.extend({
  save: () ->
    @store.commit()
})
