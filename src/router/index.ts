import { createRouter, createWebHistory } from "vue-router";

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    { path: '/', component: () => import('../views/Home.vue') },
    { path: '/connections', component: () => import('../views/Connections.vue')},
    { path: '/generator', component: () => import('../views/Generator.vue')},
    { path: '/schedules', component: () => import('../views/Schedules.vue')}
  ],
});

export default router;
