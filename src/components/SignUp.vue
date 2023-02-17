<template>
  <img class="logo" src="../assets/signup.png" />
  <h1>サインアップ</h1>
  <div class="register">
    <input type="text" v-model="name" :placeholder="ja_Name" />
    <input type="text" v-model="email" :placeholder="ja_Email" />
    <input type="password" v-model="password" :placeholder="ja_Password" />
    <button v-on:click="SignUp">{{ ja_Signup }}</button>
    <p>
      <router-link to="/login">{{ ja_Login }}</router-link>
    </p>
  </div>
</template>
<script>
import axios from "axios";
import ja from "../locales/ja.json";
export default {
  name: "SignUp",
  data() {
    return {
      name: "",
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
    async SignUp() {
      let result = await axios.post("http://localhost:3000/user", {
        email: this.email,
        name: this.name,
        password: this.password,
      });
      console.warn(result);
      if (result.status == 201) {
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
