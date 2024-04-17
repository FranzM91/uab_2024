import { Component, OnInit } from '@angular/core';
import { MenuItem } from 'primeng/api/menuitem';
import { MessageService } from 'primeng/api';

@Component({
    templateUrl: './artista-list.component.html',
    styleUrls: ['./artista-list.component.css'],
    providers: [MessageService]
})
export class ArtistaListComponent implements OnInit {
    contador = 0;
    items: MenuItem[];
    
    constructor(private messageService: MessageService) {
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
    }
    showSuccess() {
        console.warn('Show TOAST');
        this.messageService.add({severity:'success', summary: 'Reset OK', detail: 'Message Content'});
    }
}
