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
  }
}

export default SystemMessageStore;
