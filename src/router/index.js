import { createRouter, createWebHistory } from 'vue-router'
import JobView from '../views/JobView.vue'
import SignUp from '../components/SignUp.vue'
const routes = [
  {
    path: '/',
    name: 'job',
    component: JobView, SignUp
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
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})
export default router