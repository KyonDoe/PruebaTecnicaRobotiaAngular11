import { Component, OnInit } from '@angular/core'; 
import { HttpClient } from '@angular/common/http';

import { Usuario } from '../../usuarioClass';
import { UsuarioService } from '../../servicios/usuarios.service';

@Component({
  selector: 'usuarios',
  templateUrl: './usuarios-component.html'
})
export class Usuarios implements OnInit {
  constructor(private usuarioService: UsuarioService){}

  usuarios: Usuario[] = []
  error = '';
  success = '';
  
  ngOnInit() {
    this.getUsuarios();
  }
        
  getUsuarios(): void {
    this.usuarioService.getAll().subscribe(
      (res: Usuario[]) => {
        this.usuarios = res;
      },
      (err) => {
        this.error = err;
      }
    );
  }

}
