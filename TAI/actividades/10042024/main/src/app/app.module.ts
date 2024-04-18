import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { BrowserModule } from '@angular/platform-browser';
import { LocationStrategy, HashLocationStrategy } from '@angular/common';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { AppRoutingModule } from './app-routing.module';
import { StyleClassModule } from 'primeng/styleclass';
import { AppComponent } from './app.component';
import { ButtonModule } from 'primeng/button';
import { SplitButtonModule } from 'primeng/splitbutton';
import { ToastModule } from 'primeng/toast';
import { TableModule } from 'primeng/table';
import { SpeedDialModule } from 'primeng/speeddial';
import { ArtistaListComponent } from './components/artistas/artista-list/artista-list.component';
import { DashBoardComponent } from './components/dashboard/dashboard.component';

@NgModule({
    imports: [
        BrowserModule,
        FormsModule,
        AppRoutingModule,
        HttpClientModule,
        BrowserAnimationsModule,
        StyleClassModule,
        // import Module from PrimeNG
        ButtonModule,
        SplitButtonModule,
        ToastModule,
        SpeedDialModule,
        TableModule
    ],
    declarations: [
        AppComponent,
        // declare my components
        ArtistaListComponent,
        DashBoardComponent
    ],
    providers: [
        { provide: LocationStrategy, useClass: HashLocationStrategy },
        // add my http interceptors
    ],
    bootstrap: [AppComponent]
})
export class AppModule { }
