import { Injectable } from '@angular/core';

export interface NavigationItem {
  id: string;
  title: string;
  type: 'item' | 'collapse' | 'group';
  icon?: string;
  url?: string;
  classes?: string;
  external?: boolean;
  target?: boolean;
  breadcrumbs?: boolean;
  children?: Navigation[];
}

export interface Navigation extends NavigationItem {
  children?: NavigationItem[];
}
const NavigationItems = [
  {
    id: 'dashboard',
    title: 'Dashboard',
    type: 'group',
    icon: 'icon-navigation',
    children: [
      {
        id: 'default',
        title: 'Default',
        type: 'item',
        classes: 'nav-item',
        url: '/default',
        icon: 'ti ti-dashboard',
        breadcrumbs: false
      }
    ]
  },
  {
    id: 'page',
    title: 'Configuration',
    type: 'group',
    icon: 'icon-navigation',
    children: [
      {
        id: 'Authentication',
        title: 'System Users',
        type: 'collapse',
        icon: 'ti ti-user',
        children: [
          {
            id: 'employee',
            title: 'Employees',
            type: 'item',
            url: '/employees',
        
            breadcrumbs: false
          },
          {
            id: 'user',
            title: 'Users',
            type: 'item',
            url: '/users',
          
            breadcrumbs: false
          }
        ]
      }
    ]
  },
  {
    id: 'page2',
    title: 'System Control',
    type: 'group',
    icon: 'icon-navigation',
    children: [
    
      {
        id: 'data',
        title: 'Data',
        type: 'item',
        classes: 'nav-item',
        url: '/system-control/data',
        icon: 'ti ti-dashboard',
        breadcrumbs: false
      },
      
      {
        id: 'data',
        title: 'Maintain',
        type: 'item',
        classes: 'nav-item',
        url: '/system-control/maintain',
        icon: 'ti ti-dashboard',
        breadcrumbs: false
      },
      
      {
        id: 'setup',
        title: 'Setup',
        type: 'item',
        classes: 'nav-item',
        url: '/system-control/setup',
        icon: 'ti ti-dashboard',
        breadcrumbs: false
      },
      
      {
        id: 'setting',
        title: 'Setting',
        type: 'item',
        classes: 'nav-item',
        url: '/system-control/setting',
        icon: 'ti ti-dashboard',
        breadcrumbs: false
      }
    ]
  },
 
];

@Injectable()
export class NavigationItem {
  get() {
    return NavigationItems;
  }
}
