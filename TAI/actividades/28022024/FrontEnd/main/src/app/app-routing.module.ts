import { RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';
import { ArtistaListComponent } from './components/artistas/artista-list/artista-list.component';
import { NotFoundComponent } from './components/notfounds/notfound.component';

@NgModule({
    imports: [
        RouterModule.forRoot([
            { path: '', redirectTo: 'home', pathMatch: 'full' },
            { path: 'home', component: ArtistaListComponent }, // create component
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
