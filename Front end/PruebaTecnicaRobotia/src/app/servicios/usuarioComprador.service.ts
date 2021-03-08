import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse, HttpParams } from '@angular/common/http';

import { Observable, throwError } from 'rxjs';
import { map, catchError } from 'rxjs/operators';

import { UsuarioComprador } from '../usuarioCompradorClass';

@Injectable({
  providedIn: 'root'
})

export class usuarioCompradorService {

  baseUrl = 'http://localhost/prueba';
  usuariosCompradores: typeof UsuarioComprador[] = [];

  constructor(private http: HttpClient) { }

  getAll(): Observable<UsuarioComprador[]> {
    return this.http.get(`${this.baseUrl}/listCompradores.php`).pipe(
      map((res: any) => {
        this.usuariosCompradores = res['data'];
        return this.usuariosCompradores;
    }),
    catchError(this.handleError));
  }

  private handleError(error: HttpErrorResponse) {
    console.log(error);
   
    // retorna un observable con un mensaje de advertencia
    return throwError('Error! Algo salio mal.');
  }

}

