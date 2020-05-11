class Product {
  int id;
  String nombre;
  String apellido;
  int cedula;
  String placa;

  Product({this.id, this.nombre, this.apellido, this.cedula, this.placa});

  factory Product.fromJson(Map<String, dynamic> parsedJson) {
    return Product(
      id: parsedJson['id'],
      nombre: parsedJson['nombre'],
      apellido: parsedJson['apellido'],
      cedula: parsedJson['cedula'],
      placa: parsedJson['placa'],
    );
  }
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'apellido': apellido,
        'cedula': cedula,
        'placa': placa
      };
}
