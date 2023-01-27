class Ciudad {
  late String nombre;
  late String descrpcion;
  late String foto;

Ciudad(this.nombre,this.descrpcion,this.foto);
  String getNombre() {
    return nombre;
  }

  void setNombre(String nombre) {
    this.nombre = nombre;
  }

  String getDescrpcion() {
    return descrpcion;
  }

  void setDescrpcion(String descrpcion) {
    this.descrpcion = descrpcion;
  }

  String getFoto() {
    return foto;
  }

  void setFoto(String foto) {
    this.foto = foto;
  }
}
