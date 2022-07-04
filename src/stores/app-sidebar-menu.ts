import { defineStore } from "pinia";

export const useAppSidebarMenuStore = defineStore({
  id: "appSidebarMenu",
  state: () => {
    return [{
      'text': 'Navigation',
      'is_header': true
    },{
      'url': '/',
      'icon': 'bi bi-house-door',
      'text': 'Home'
    },{
      'url': '/connections',
      'icon': 'bi bi-gear-wide-connected',
      'text': 'Data Connections'
    },{
      'url': '/generator',
      'icon': 'bi bi-clipboard-data-fill',
      'text': 'Generator Models'
    },{
      'url': '/schedules',
      'icon': 'bi bi-calendar3',
      'text': 'Generator Scheduling'
    }]
  }
});
