TasksEmber.Task = DS.Model.extend({
  name: DS.attr('string', { defaultValue: 'Enter a name' })
  done: DS.attr('boolean', { defaultValue: false })
})
