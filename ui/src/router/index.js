import { createRouter, createWebHistory } from 'vue-router'
import JobView from '../views/JobView.vue'
import SignUp from '../components/SignUp.vue'
import Login from '../components/Login.vue'
const routes = [
  {
    path: '/',
    name: 'job',
    component: JobView, SignUp, Login
  },
  {
    path: '/employee',
    name: 'employee',
    component: () => import('../views/EmployeeView.vue')
  },
  {
    path: '/signup',
    name: 'signup',
    component: () => import('../components/SignUp.vue')
  },
  {
    path: '/login',
    name: 'login',
    component: () => import('../components/Login.vue')
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})
export default router