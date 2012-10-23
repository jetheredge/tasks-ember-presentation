TasksEmber.Router = Ember.Router.extend({
  location: 'hash'
  root: Ember.Route.extend(
    index: Ember.Route.extend(
      route: '/'
      redirectsTo: 'tasks.index'
    )

    tasks: Ember.Route.extend(
      route: '/tasks'
      index: Ember.Route.extend(
        route: '/'
        editTask: Ember.Route.transitionTo('edit')
        createTask: Ember.Route.transitionTo('create')
        connectOutlets: (router) ->
          router.get('applicationController').connectOutlet('top_nav', 'nav')
          router.get('applicationController').connectOutlet('footer', 'footer')
          router.get('applicationController').connectOutlet('tasks', TasksEmber.Task.find())
      )
      edit: Ember.Route.extend(
        route: '/:task_id/edit'
        goBack: Ember.Route.transitionTo('index')
        connectOutlets: (router, task) ->
          router.get('applicationController').connectOutlet('top_nav', 'nav')
          router.get('applicationController').connectOutlet('footer', 'footer')
          router.get('applicationController').connectOutlet('task', task)
      )
      create: Ember.Route.extend(
        route: '/create'
        goBack: Ember.Route.transitionTo('index')
        connectOutlets: (router, task) ->
          router.get('applicationController').connectOutlet('top_nav', 'nav')
          router.get('applicationController').connectOutlet('footer', 'footer')
          router.get('applicationController').connectOutlet('task', TasksEmber.Task.createRecord())
      )
    )
  )
})
