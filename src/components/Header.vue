<template>
  <nav class="navbar navbar-expand-lx navbar-light bg-light">
    <div class="container-fluid">
      <ul class="nav">
        <li class="nav-item">
          <h3 class="d-flex justify-content-center m-1 mr-5">
            {{ ja_Title }}
          </h3>
        </li>
        <li class="nav-item m-1">
          <router-link class="btn btn-light btn-outline-primary" to="/">{{
            ja_Job
          }}</router-link>
        </li>
        <li class="nav-item m-1">
          <router-link
            class="btn btn-light btn-outline-primary"
            :to="{ name: 'employee' }"
            >{{ ja_Master }}</router-link
          >
        </li>
      </ul>
      <div>
        <ul class="nav">
          <li class="nav-item m-1 mt-2">
            <a href="#">ようこそ{{ name }}</a>
          </li>
          <li class="nav-item m-1">
            <button
              class="navbar-toggler"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#navbarTogglerDemo02"
              aria-controls="navbarTogglerDemo02"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span class="navbar-toggler-icon"></span>
            </button>
          </li>
        </ul>
        <div
          style="z-index: 100; position: absolute; top: 60px; right: 10px"
          class="collapse"
          id="navbarTogglerDemo02"
        >
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item"></li>
            <li class="nav-item">
              <a
                class="btn btn-light m-1 btn-outline-primary"
                v-on:click="Logout"
                href="#"
                >{{ ja_Logout }}</a
              >
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
</template>
<script>
import ja from "../locales/ja.json";
export default {
  props: ["name"],
  data() {
    return {
      ja_Title: ja.Title,
      ja_Master: ja.Master,
      ja_Job: ja.Job,
      ja_Signup: ja.Signup,
      ja_Login: ja.Login,
      ja_Logout: ja.Logout,
    };
  },
  methods: {
    Logout() {
      localStorage.clear();
      this.$router.push({ name: "login" });
    },
  },
};
</script>
