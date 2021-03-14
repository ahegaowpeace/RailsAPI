<template>
  <v-snackbar
    v-model="display"
    top
    :color="color"
    timeout="300000"
  >
    {{ text }}
      <v-btn
        color="white"
        icon
        @click="closeMessage"
      >
        <v-icon>
          mdi-close
        </v-icon>
      </v-btn>
  </v-snackbar>
</template>

<script>
  import { mapState } from "vuex";

  export default {
    name: 'Toaster',
    computed: {
      ...mapState('SystemMessageStore', ['color', 'text']),
      display: {
        get() {
          return this.$store.state.SystemMessageStore.display
        },
        set() {
          return this.$store.dispatch({type: 'SystemMessageStore/destroyMessage'})
        }
      }
    },
    methods: {
      closeMessage () {
        return this.$store.dispatch({type: 'SystemMessageStore/destroyMessage'})
      }
    }
  }
</script>
