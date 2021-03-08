import { Component, OnInit } from '@angular/core'; 
import { HttpClient } from '@angular/common/http';

import { Producto } from '../../productoClass';
import { ProductoService } from '../../servicios/productos.service';

@Component({
  selector: 'productos',
  templateUrl: './productos-component.html'
})
export class Productos implements OnInit {
  constructor(private productoService: ProductoService){}

  productos: Producto[] = []
  error = '';
  success = '';
  
  ngOnInit() {
    this.getProductos();
  }
        
  getProductos(): void {
    this.productoService.getAll().subscribe(
      (res: Producto[]) => {
        this.productos = res;
      },
      (err) => {
        this.error = err;
      }
    );
  }

}
