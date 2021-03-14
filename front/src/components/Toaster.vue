<template>
  <v-snackbar
    v-model="display"
    top
    color="success"
  >
    {{ text }}
      <v-btn
        color="white"
        icon
        v-bind="attrs"
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
