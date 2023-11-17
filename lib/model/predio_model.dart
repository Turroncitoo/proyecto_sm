class Predio {
  final int id_predio;
  final String? descripcion;
  final String? direccion;
  final String? telefono;
  final int? id_persona;

  Predio({
    required this.id_predio,
    this.descripcion,
    this.direccion,
    this.telefono,
    this.id_persona,
  });
}

class Persona {
  final int id_persona;
  final String nombres;
  final String apellido_paterno;

  Persona({
    required this.id_persona,
    required this.nombres,
    required this.apellido_paterno,
  });
}

class Personal {
  final int id_personal;
  final int id_persona;
  final int id_rol;

  Personal({
    required this.id_personal,
    required this.id_persona,
    required this.id_rol,
  });
}