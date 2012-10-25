TasksEmber.SubTask = DS.Model.extend({
  name: DS.attr('string', { defaultValue: 'Enter a name' })
  done: DS.attr('boolean', { defaultValue: false })
  task: DS.belongsTo('TasksEmber.Task')
})
