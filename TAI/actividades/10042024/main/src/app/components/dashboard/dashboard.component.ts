import { Component, OnInit } from '@angular/core';

@Component({
    template: `
    <h1>DashBoard</h1> 
    
    <a routerLink='/home' >Home Component</a>

    <button pButton 
    type="button" 
    icon="pi pi-plus" 
    iconPos="left" 
    label="Login" 
    class="p-button-success" (click)="methodLogin()"></button>
    `
})
export class DashBoardComponent implements OnInit {
    constructor() { }

    ngOnInit(): void { }

    methodLogin() {
        localStorage.setItem('login', 'ISLOGIN');
    }
}
