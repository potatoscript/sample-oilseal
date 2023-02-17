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
import dummy from "../assets/dummy.json";
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
      await axios
        .get(
          `http://localhost:3000/user?email=${this.email}&password=${this.password}`
        )
        .then((response) => {
          console.warn(response);
          if (response.status == 200 && response.data.length > 0) {
            localStorage.setItem("user-info", JSON.stringify(response.data));
            this.$router.push({ name: "job" });
          }
        })
        .catch((error) => {
          console.log(error);
          // 接続がない場合、ダミーデータが使用されます
          dummy[0].user.forEach((e) => {
            if (e.email == this.email && e.password == this.password) {
              localStorage.setItem("user-info", JSON.stringify(dummy[0].user));
              this.$router.push({ name: "job" });
            }
          });
        });
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
