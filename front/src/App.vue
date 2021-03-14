<template>
  <div
    class="main"
  >
    <toaster />
    <v-tabs
      fixed-tabs
      background-color="indigo"
    >
      <v-tab to="/shell">
        Shell
      </v-tab>
      <v-tab to="/rabbit">
        Rabbit
      </v-tab>
      <v-tab>
        Other
      </v-tab>
      <v-tab>
        Settings
      </v-tab>
      <v-tab>
        About
      </v-tab>
    </v-tabs>
    <v-main>
      <router-view></router-view>
    </v-main>
  </div>
</template>

<script>
import Toaster from './components/Toaster'

export default {
  name: 'App',
  components: {
    Toaster
  },
  data: () => ({
  }),
};
</script>

<style>
  .main {
    padding: 20px;
  }
</style>
