import { Component, OnInit } from '@angular/core';
import { MenuItem } from 'primeng/api/menuitem';
import { MessageService } from 'primeng/api';
import { BaseService } from '../../shared/base.service';

@Component({
    templateUrl: './artista-list.component.html',
    styleUrls: ['./artista-list.component.css'],
    providers: [MessageService]
})
export class ArtistaListComponent implements OnInit {
    contador = 0;
    items: MenuItem[];
    resultItems: [];
    
    constructor(private messageService: MessageService, public service: BaseService) {
        this.consumeService();
        this.items = [
            {
                label: 'More',
                icon: 'pi pi-plus',
                command: () => {
                    this.contadorMethod();
                }
            },
            {
                label: 'Minus',
                icon: 'pi pi-minus',
                command: () => {
                    this.contadorNegativoMethod();
                }
            },
            {
                label: 'Reset',
                icon: 'pi pi-refresh',
                command: () => {
                    this.reset();
                }
            },
        ];
    }

    consumeService() {
        this.service.httpPost().subscribe(
            response => {
                this.resultItems = response;
                console.warn(`Success!!! ${response}`);
            },
            error => {
                console.warn('Error HTTP')
            }
        );
    }

    ngOnInit(): void { }

    contadorMethod() {
        // this.contador = this.contador + 1;
        this.contador++;
    }
    contadorNegativoMethod() {
        // this.contador = this.contador + 1;
        if(this.contador > 0)
            this.contador--;
    }

    reset() {
        this.contador = 0;
        this.showSuccess();
        this.consumeService();
    }
    showSuccess() {
        console.warn('Show TOAST');
        this.messageService.add({severity:'success', summary: 'Reset OK', detail: 'Message Content'});
    }
}
