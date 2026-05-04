// import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/material.dart';
import 'package:task_flow2/screens/auth/widgets/auth_text_field.dart';
import 'package:task_flow2/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _namecontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  // ici on appele le service de l'auth pour passé le data das la base de donnes
  final _authService = AuthService();
  // ici c'est un variable pour montre a l'utilisateure que l'app est marche
  bool _loading = false;
  @override
  // on utilise ici dispose pour supprimer les controller lorsque en sort dans la page , c'est pour la memoire (car s'asrat lent)
  void dispose() {
    _namecontroller.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  // la logic d'inscription
  Future<void> _register() async {
    // c'est ona l'error dans la validation par exemple eamil
    if (!_formKey.currentState!.validate()) return;
    // en commance le chargement
    setState(() => _loading = true);
    // on appelle la fonction register dans l'authsevice
    final error = await _authService.register(
      displayName: _namecontroller.text,
      email: _emailcontroller.text,
      password: _passwordcontroller.text,
    );
    //si le widget n'est plus dans l'arbre
    if (!mounted) return;
    // en arret le chargement
    setState(() => _loading = false);
    if (error != null) {
      // si il return l'error afichier ca dans le snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error),
          backgroundColor: const Color(0xFFEF4444),
        ),
      );
    } else {
      // si il return vrai on return l'user  dans la page login
      Navigator.pop(context);
    }
  }

  Widget build(BuildContext context) {
    const indigo = Color(0xFF4F46E5);
    const indigoLight = Color(0xFFEEF2FF);
    const textPrimary = Color(0xFF111827);
    const textSecondary = Color(0xFF6B7280);
    const borderColor = Color(0xFFE5E7EB);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // titre
                  const Text(
                    'Créez votre compte',
                    style: TextStyle(
                      fontSize: 26,
                      color: textSecondary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Rejoignez Taskflow pour gérer votre taches',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: textPrimary,
                    ),
                  ),
                  const SizedBox(height: 32),

                  AuthTextField(
                    controller: _namecontroller,
                    hint: 'Votre nom complet',
                    label: 'Nom',
                    prefixIcon: Icons.person_outline,
                    validator: (v) => (v == null || v.isEmpty)
                        ? 'Entrez votre nom : '
                        : null,
                  ),
                  SizedBox(height: 16),
                  // champ Email
                  AuthTextField(
                    controller: _emailcontroller,
                    hint: 'email@gmail.com',
                    label: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Icons.email_outlined,
                    validator: (v) => (v == null || !v.contains('@'))
                        ? 'Email invalide '
                        : null,
                  ),
                  SizedBox(height: 16),
                  // label du mot de passe
                  const SizedBox(height: 6),
                  AuthTextField(
                    controller: _passwordcontroller,
                    hint: '******',
                    label: 'Votre Password',
                    isPasswordd: true,
                    prefixIcon: Icons.lock_outlined,
                    validator: (v) => (v == null || v.length < 6)
                        ? 'Minimum 6 caracteres'
                        : null,
                  ),

                  const SizedBox(height: 24),
                  GestureDetector(
                    onTap: _loading ? null : _register,
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        color: indigo,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: _loading
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : const Text(
                                'S\'inscrire',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('vous avez deja un compte ?'),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Text(
                          "Se connecter",
                          style: TextStyle(
                            color: indigo,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
