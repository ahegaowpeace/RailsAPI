import Vue from 'vue'
import Vuex from 'vuex'
import SystemMessageStore from './modules/system_message_store'

Vue.use(Vuex)

export default new Vuex.Store({
  modules: {
    SystemMessageStore
  }
})
