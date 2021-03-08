import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';

import { AppComponent } from './app.component';
import { Compradores } from './components/compradores/compradores-component';
import { Productos } from './components/productos/productos-component';
import { Usuarios } from './components/usuarios/usuarios-component';

@NgModule({
  declarations: [
    AppComponent,
    Compradores,
    Productos,
    Usuarios
  ],
  imports: [
    BrowserModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [
    AppComponent,
    Compradores,
    Productos,
    Usuarios
  ]
})
export class AppModule { }
