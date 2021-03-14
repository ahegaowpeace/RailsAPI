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
    create (state, data) {
      state.text = data.text
      state.color = data.color
      state.display = true
    },
    destroy (state) {
      state.text = ''
      state.color = ''
      state.display = false
    }
  },
  actions: {
    createMessage (context, { status, message }) {
      context.commit('create', responseConverter(status, message))
    },
    destroyMessage (context) {
      context.commit('destroy')
    }
  }
}

const responseConverter = (status, message) => {
  if (status == 200) {
    return {
      color: 'success',
      text: message
    }
  } else {
    return {
      color: 'danger',
      text: `エラーが発生しました(${message})`
    }
  }
}

export default SystemMessageStore;
