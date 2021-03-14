import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

const store = new Vuex.Store({
  state: {
    text: '',
    color: '',
    display: false
  },
  getters: {
    snackbarDisplay: state => {
      return state.display
    }
  },
  mutations: {
  }
})

export default store
