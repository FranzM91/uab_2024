import { RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';

@NgModule({
    imports: [
        RouterModule.forRoot([
            { path: '', redirectTo: 'home', pathMatch: 'full' },
            // { path: 'home', component: ArtistaListComponent }, // create component
            { path: '**', redirectTo: 'notfound'},
            // {path:'notfound', component: NotfoundComponent}, // create component
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
