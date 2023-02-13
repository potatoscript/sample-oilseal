<template>
  <div class="p-3">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
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
          <div
            style="position: absolute; top: 60px; right: 10px"
            class="collapse"
            id="navbarTogglerDemo02"
          >
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item"></li>
              <li class="nav-item">
                <router-link
                  class="btn btn-light m-1 btn-outline-primary"
                  :to="{ name: 'signup' }"
                  >{{ ja_Signup }}</router-link
                >
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
    <router-view />
  </div>
</template>
<script>
import ja from "./locales/ja.json";
export default {
  data() {
    return {
      ja_Title: ja.Title,
      ja_Master: ja.Master,
      ja_Job: ja.Job,
      ja_Signup: ja.Signup,
    };
  },
};
</script>

<style>
.collapeMenu {
  position: relative;
}
#app {
  text-align: center;
}
#nav {
  padding: 30px;
}
#nav a {
  font-weight: bold;
  color: #2c3e50;
  text-decoration: none;
  padding: 10px;
  border-radius: 4px;
}
#nav a.router-link-exact-active {
  color: white;
  background: crimson;
}
.logo {
  width: 100px;
}
.register input,
.login input {
  width: 300px;
  height: 40px;
  padding-left: 20px;
  display: block;
  margin-bottom: 30px;
  margin-right: auto;
  margin-left: auto;
  border: 1px solid skyblue;
}
.register button,
.login button {
  width: 320px;
  height: 40px;
  border: 1px solid skyblue;
  background-color: skyblue;
  color: #ffffff;
  cursor: pointer;
}
</style>
