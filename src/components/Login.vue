<template>
  <img class="logo" src="../assets/signup.png" />
  <h1>Login</h1>
  <div class="register">
    <input type="text" v-model="name" placeholder="名称" />
    <input type="password" v-model="password" placeholder="パスワード" />
    <button v-on:click="Login">Login</button>
    <p>
      <router-link to="/signup">Sign Up</router-link>
    </p>
  </div>
</template>
<script>
import axios from "axios";
export default {
  name: "Log-in",
  data() {
    return {
      name: "",
      email: "",
      password: "",
    };
  },
  methods: {
    async Login() {
      let result = await axios.post(
        "https://my-json-server.typicode.com/potatoscript/json-server/user",
        {
          email: this.email,
          name: this.name,
          password: this.password,
        }
      );
      console.warn(result);
      if (result.status == 201) {
        localStorage.setItem("user-info", JSON.stringify(result.data));
        this.$router.push({ name: "job" });
      }
    },
  },
  mounted() {
    //let user = localStorage.getItem("user-info");
  },
};
</script>
<style scoped>
.logo {
  width: 100px;
}
.register input {
  width: 300px;
  height: 40px;
  padding-left: 20px;
  display: block;
  margin-bottom: 30px;
  margin-right: auto;
  margin-left: auto;
  border: 1px solid skyblue;
}
.register button {
  width: 320px;
  height: 40px;
  border: 1px solid skyblue;
  background-color: skyblue;
  color: #ffffff;
  cursor: pointer;
}
</style>
