import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { catchError, tap } from 'rxjs/operators';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';

@Injectable({
    providedIn: 'root'
})
export class BaseService {
    public url = environment.serviceUrl;
    
    constructor( public http: HttpClient){}

    public httpPost(): Observable<any> {
        let body = JSON.stringify('');
        return this.http.post(`https://eecc-190-129-199-203.ngrok-free.app/api/artista/getall`, body).pipe(
            tap((res) => { 
                return res; 
            }),
            catchError(err => { 
                return `Error code in service: ${err.status}`; 
            })
        );
    }
}