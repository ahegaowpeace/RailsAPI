<template>
  <v-snackbar
    v-model="display"
    top
  >
    hoge
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
    }
  }
</script>
