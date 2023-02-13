<template>
  <img class="logo" src="../assets/signup.png" />
  <h1>{{ ja_Login }}</h1>
  <div class="login">
    <input type="text" v-model="email" :placeholder="ja_Email" />
    <input type="password" v-model="password" :placeholder="ja_Password" />
    <button v-on:click="Login">{{ ja_Login }}</button>
    <p>
      <router-link to="/signup">{{ ja_Signup }}</router-link>
    </p>
  </div>
</template>
<script>
import axios from "axios";
import ja from "../locales/ja.json";
export default {
  name: "Log-in",
  data() {
    return {
      email: "",
      password: "",
      ja_Email: ja.Email,
      ja_Password: ja.Password,
      ja_Name: ja.Name,
      ja_Login: ja.Login,
      ja_Signup: ja.Signup,
    };
  },
  methods: {
    async Login() {
      let result = await axios.get(
        `http://localhost:3000/user?email=${this.email}&password=${this.password}`
      );
      console.warn(result);
      if (result.status == 200 && result.data.length > 0) {
        localStorage.setItem("user-info", JSON.stringify(result.data));
        this.$router.push({ name: "job" });
      }
    },
  },
  mounted() {
    let user = localStorage.getItem("user-info");
    if (user) {
      this.$router.push({ name: "job" });
    }
  },
};
</script>
<style scoped></style>
