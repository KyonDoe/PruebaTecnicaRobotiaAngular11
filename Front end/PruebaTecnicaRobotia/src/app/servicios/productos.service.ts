import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse, HttpParams } from '@angular/common/http';

import { Observable, throwError } from 'rxjs';
import { map, catchError } from 'rxjs/operators';

import { Producto } from '../productoClass';

@Injectable({
  providedIn: 'root'
})

export class ProductoService {

  baseUrl = 'http://localhost/prueba';
  productos: typeof Producto[] = [];

  constructor(private http: HttpClient) { }

  getAll(): Observable<Producto[]> {
    return this.http.get(`${this.baseUrl}/lstProductos.php`).pipe(
      map((res: any) => {
        this.productos = res['data'];
        return this.productos;
    }),
    catchError(this.handleError));
  }

  private handleError(error: HttpErrorResponse) {
    console.log(error);
   
    // retorna un observable con un mensaje de advertencia
    return throwError('Error! Algo salio mal.');
  }

}
