import dd from 'ddeyes'
import { 
  services
  toolFuc
} from 'class-todo-redux'

export default classLocalService = ->
  # create todo
  results = await services.default.local.create toolFuc
  ,
    company: '湖北和风和乐旅游有限公司'
    main: '旅游'
    location: '武汉'
  dd results

  # fetch todo
  data_fetch = await services.default.local.fetch toolFuc
  ,
    objectId: results.objectId
  dd data_fetch

  # patch todo
  data_patch = await services.default.local.patch toolFuc
  ,
    objectId: data_fetch.objectId
    company: '湖北举手帮租有限公司'
    main: '租房'
    location: '武汉'
  dd data_patch

  # reload todos
  data_reload = await services.default.local.reload toolFuc
  dd data_reload

  # remove todo
  data_remove = await services.default.local.remove toolFuc
  ,
    objectId: data_patch.objectId
  dd data_remove

  # reload todos
  # data_reload = await services.default.local.reload toolFuc
  # dd data_reload

  # remove all
  # ids = data_reload.results.reduce (r, c) ->
  #   [
  #     r...
  #     c.objectId
  #   ]
  # , []
  # for id in ids
  #   data_removeAll = await services.default.local.remove toolFuc
  #   ,
  #     objectId: id
  #   dd data_remove