import { RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';
import { ArtistaListComponent } from './components/artistas/artista-list/artista-list.component';
import { NotFoundComponent } from './components/notfounds/notfound.component';
import { DashBoardComponent } from './components/dashboard/dashboard.component';
import { AuthenticationGuard } from './shared/auth.guard';

@NgModule({
    imports: [
        RouterModule.forRoot([
            { path: '', redirectTo: 'dashboard', pathMatch: 'full' },
            { path: 'dashboard', component: DashBoardComponent }, // create component
            { path: 'home', 
                canActivate: [AuthenticationGuard],
                component: ArtistaListComponent }, // create component
            { path: '**', redirectTo: 'notfound'},
            { path:'notfound', component: NotFoundComponent}, // create component
        ],
        {
            scrollPositionRestoration: 'enabled',
            anchorScrolling:'enabled'
        })
    ],
    exports: [RouterModule]
})
export class AppRoutingModule {
}
