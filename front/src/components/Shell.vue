<template>
  <v-form>
    <v-row
      class="arg-row"
    >
      <v-col
        cols="6"
        md="2"
      >
        <v-text-field
          v-model="argument1"
          label="ファイル名"
          placeholder="example"
        />
      </v-col>
      <v-col
        cols="6"
        md="2"
      >
        <v-text-field
          v-model="argument2"
          label="BASE URL"
          placeholder="https://nhentai.net/g/350336/"
        />
      </v-col>
      <v-col
        cols="6"
        md="2"
      >
        <v-text-field
          v-model="argument3"
          label="ページ数"
          placeholder="20"
        />
      </v-col>
    </v-row>
    <v-btn
      color="primary"
      dark
      @click="excecuteShellScript"
    >
      EXECUTE
    </v-btn>
  </v-form>
</template>

<script>
  import axios from 'axios'

  export default {
    data: function () {
      return {
        argument1: null,
        argument2: null,
        argument3: null
      }
    },
    methods: {
      excecuteShellScript: function () {
        const query = {
          arguments: {
            argument1: this.argument1,
            argument2: this.argument2,
            argument3: this.argument3
          }
        }
        axios.patch('http://192.168.3.7:3001/api/image_scrayping', query)
          .then((response) => {
            console.log(response);
          })
          .catch((error) => {
            console.log(error)
          })
      }
    }
  }
</script>

<style>
  .arg-row {
    margin: 0 auto;
  }
</style>
