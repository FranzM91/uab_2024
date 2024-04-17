import { Injectable } from "@angular/core";
import { ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot } from "@angular/router";

@Injectable({
    providedIn: 'root'
})
export class AuthenticationGuard implements CanActivate {
    constructor(private routes: Router) {}
    canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): boolean {
        var data = localStorage.getItem('login');
        console.warn(`Resultado LOCALStorage: ${data}`);
        if (data != 'ISLOGIN')
            this.routes.navigateByUrl('dashboard');
        return (data == 'ISLOGIN') ? true : false;
    }
}