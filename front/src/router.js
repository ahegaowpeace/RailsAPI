import Vue from 'vue'
import Router from 'vue-router'
import Shell from './components/Shell.vue'
import Rabbit from './components/Rabbit.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/shell',
      name: 'shell',
      component: Shell
    },
    {
      path: '/rabbit',
      name: 'rabbit',
      component: Rabbit
    }
  ]
})
