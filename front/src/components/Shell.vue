<template>
  <v-form
    class="pa-5"
  >
    <v-row>
      <v-col
        cols="6"
        md="4"
      >
        <v-text-field
          v-model="fileName"
          label="ファイル名"
          placeholder="example"
        />
      </v-col>
      <v-col
        cols="6"
        md="4"
      >
        <v-text-field
          v-model="baseUrl"
          label="BASE URL"
          placeholder="https://nhentai.net/g/350336/"
        />
      </v-col>
      <v-col
        cols="6"
        md="4"
      >
        <v-text-field
          v-model="pageNum"
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
    <v-btn
      color="primary"
      dark
      @click="testDispatch"
    >
      てすと
    </v-btn>
  </v-form>
</template>

<script>
  import axios from 'axios'

  export default {
    data: function () {
      return {
        fileName: null,
        baseUrl: null,
        pageNum: null
      }
    },
    methods: {
      excecuteShellScript: function () {
        const query = {
          arguments: {
            file_name: this.fileName,
            base_url: this.baseUrl,
            page_num: this.pageNum
          }
        }
        axios.patch('http://192.168.3.7:3001/api/image_scrayping', query)
          .then((response) => {
            console.log(response);
          })
          .catch((error) => {
            console.log(error)
          })
      },
      testDispatch: function () {
        const payload = {
          status: 200,
          message: 'Success'
        }
        this.$store.dispatch('SystemMessageStore/createMessage', payload)
      }
    }
  }
</script>
