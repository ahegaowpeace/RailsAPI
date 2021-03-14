const SystemMessageStore = {
  namespaced: true,
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
    destroy (state) {
      state.text = ''
      state.color = ''
      state.display = false
    }
  },
  actions: {
    destroyMessage (context) {
      context.commit('destroy')
    }
  }
}

export default SystemMessageStore;
