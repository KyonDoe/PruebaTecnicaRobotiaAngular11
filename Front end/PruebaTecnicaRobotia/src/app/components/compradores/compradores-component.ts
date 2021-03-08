import { Component, OnInit } from '@angular/core'; 
import { HttpClient } from '@angular/common/http';

import { UsuarioComprador } from '../../usuarioCompradorClass';
import { usuarioCompradorService } from '../../servicios/usuarioComprador.service';

@Component({
  selector: 'compradores',
  templateUrl: './compradores-component.html'
})
export class Compradores implements OnInit {
  constructor(private usuarioCompradorService: usuarioCompradorService){}

  usuariosCompradores: UsuarioComprador[] = []
  error = '';
  success = '';
  
  ngOnInit() {
    this.getUsuariosCompradores();
  }
        
  getUsuariosCompradores(): void {
    this.usuarioCompradorService.getAll().subscribe(
      (res: UsuarioComprador[]) => {
        this.usuariosCompradores = res;
      },
      (err) => {
        this.error = err;
      }
    );
  }

}
