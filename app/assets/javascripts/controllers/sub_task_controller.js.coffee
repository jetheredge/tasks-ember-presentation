TasksEmber.SubTaskController = Ember.ObjectController.extend({
  save: () ->
    @transaction.commit()
  rollback: () ->
    @transaction.rollback()
  createNewSubTask: (task) ->
    @transaction = @store.transaction()
    @transaction.createRecord(TasksEmber.SubTask, { task: task })
})
