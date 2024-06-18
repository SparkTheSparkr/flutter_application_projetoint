// ignore_for_file: unnecessary_this

class Usuario
{
  String _nome = "";
  String _senha = "";
  String _tipo = "";
  String _genero = "";
  String _email = "";
  
  Usuario(this._nome, this._genero, this._email, this._senha, this._tipo);

  Usuario.login(this._nome, this._senha);

  String get nome => this._nome;

  set nome(String value) => this._nome = value;

  get senha => this._senha;

  set senha( value) => this._senha = value;

  get tipo => this._tipo;

  set tipo( value) => this._tipo = value;

  get genero => this._genero;

  set genero( value) => this._genero = value;

  get email => this._email;

  set email( value) => this._email = value;
  
}