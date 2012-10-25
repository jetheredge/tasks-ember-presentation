TasksEmber.Router = Ember.Router.extend({
  location: 'hash'
  root: Ember.Route.extend(
    index: Ember.Route.extend(
      route: '/'
      redirectsTo: 'tasks.index'
    )

    tasks: Ember.Route.extend(
      route: '/tasks'
      connectOutlets: (router) ->
        router.get('applicationController').connectOutlet('top_nav', 'nav')
        router.get('applicationController').connectOutlet('footer', 'footer')
      index: Ember.Route.extend(
        route: '/'
        editTask: Ember.Route.transitionTo('edit')
        createTask: Ember.Route.transitionTo('create')
        addSubTask: Ember.Route.transitionTo('subTasks.create')
        connectOutlets: (router) ->
          router.get('applicationController').connectOutlet('tasks', TasksEmber.Task.find())
      )
      edit: Ember.Route.extend(
        route: '/:task_id/edit'
        goBack: Ember.Route.transitionTo('index')
        connectOutlets: (router, task) ->
          router.get('applicationController').connectOutlet('task', task)
      )
      create: Ember.Route.extend(
        route: '/create'
        goBack: Ember.Route.transitionTo('index')
        connectOutlets: (router, task) ->
          router.get('applicationController').connectOutlet('task', TasksEmber.Task.createRecord())
      )
      subTasks: Ember.Route.extend(
        route: '/:task_id/sub_tasks'
        connectOutlets: (router, task) ->
          router.get('subTaskController').set('content', task)
          router.get('applicationController').connectOutlet('top_nav', 'nav')
          router.get('applicationController').connectOutlet('footer', 'footer')
        create: Ember.Route.extend(
          route: '/create'
          goBack: Ember.Router.transitionTo('index')
          connectOutlets: (router) ->
            subTaskController = router.get('subTaskController')
            task = subTaskController.get('content')
            subTask = subTaskController.createNewSubTask(task)
            router.get('applicationController').connectOutlet('subTask', subTask)
        )
      )
    )
  )
})
