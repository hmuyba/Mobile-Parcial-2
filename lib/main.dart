import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi Aplicación'),
        ),
        body: Center(
          child: Column(
            children: [
              LoginForm(),
              PasswordRecoveryForm(),
              UserProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          // Campo de correo electrónico
          TextFormField(
            decoration: InputDecoration(labelText: 'Correo electrónico'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingresa tu correo electrónico';
              }
              return null;
            },
          ),
          // Campo de contraseña
          TextFormField(
            decoration: InputDecoration(labelText: 'Contraseña'),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingresa tu contraseña';
              }
              return null;
            },
          ),
          // Botón de inicio de sesión
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Iniciando sesión...')),
                );
              }
            },
            child: Text('Iniciar sesión'),
          ),
        ],
      ),
    );
  }
}

class PasswordRecoveryForm extends StatefulWidget {
  @override
  _PasswordRecoveryFormState createState() => _PasswordRecoveryFormState();
}

class _PasswordRecoveryFormState extends State<PasswordRecoveryForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          // Campo de contraseña actual
          TextFormField(
            decoration: InputDecoration(labelText: 'Contraseña actual'),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingresa tu contraseña actual';
              }
              return null;
            },
          ),
          // Campo de nueva contraseña
          TextFormField(
            decoration: InputDecoration(labelText: 'Nueva contraseña'),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingresa tu nueva contraseña';
              }
              return null;
            },
          ),
          // Campo de confirmación de nueva contraseña
          TextFormField(
            decoration:
                InputDecoration(labelText: 'Confirma tu nueva contraseña'),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor confirma tu nueva contraseña';
              }
              return null;
            },
          ),
          // Botón de recuperación de contraseña
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Recuperando contraseña...')),
                );
              }
            },
            child: Text('Recuperar contraseña'),
          ),
        ],
      ),
    );
  }
}

class UserProfileForm extends StatefulWidget {
  @override
  _UserProfileFormState createState() => _UserProfileFormState();
}

class _UserProfileFormState extends State<UserProfileForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          // Campo de imagen de usuario
          TextFormField(
            decoration:
                InputDecoration(labelText: 'URL de la imagen del usuario'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingresa la URL de tu imagen';
              }
              return null;
            },
          ),
          // Campo de apodo
          TextFormField(
            decoration:
                InputDecoration(labelText: 'Apodo'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingresa tu apodo';
              }
              return null;
            },
          ),
          // Campo de correo electrónico
          TextFormField(
            decoration: InputDecoration(labelText: 'Correo electrónico'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor ingresa tu correo electrónico';
              }
              return null;
            },
          ),
          // Botón de creación de perfil
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Creando perfil...')),
                );
              }
            },
            child: Text('Crear perfil'),
          ),
        ],
      ),
    );
  }
}
