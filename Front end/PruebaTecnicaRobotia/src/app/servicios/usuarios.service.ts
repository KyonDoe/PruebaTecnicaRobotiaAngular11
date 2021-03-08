import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse, HttpParams } from '@angular/common/http';

import { Observable, throwError } from 'rxjs';
import { map, catchError } from 'rxjs/operators';

import { Usuario } from '../usuarioClass';

@Injectable({
  providedIn: 'root'
})

export class UsuarioService {

  baseUrl = 'http://localhost/prueba';
  usuarios: typeof Usuario[] = [];

  constructor(private http: HttpClient) { }

  getAll(): Observable<Usuario[]> {
    return this.http.get(`${this.baseUrl}/lstUsuarios.php`).pipe(
      map((res: any) => {
        this.usuarios = res['data'];
        return this.usuarios;
    }),
    catchError(this.handleError));
  }

  private handleError(error: HttpErrorResponse) {
    console.log(error);
   
    // retorna un observable con un mensaje de advertencia
    return throwError('Error! Algo salio mal.');
  }

}