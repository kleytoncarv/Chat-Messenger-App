# chat_messenger_app

Um projeto utilizando Flutter e Firebase.

## Getting Started

A ideia começou através de um projeto realizado no curso técnico do SENAI.

Objetivo principal: Criar um chat que possa ser aplicavél em qualquer aplicativo, com funções especificas para as variedades de nichos.

App que será aplicado: O aplicativo escolhido no momento para aplicar esta ideia de chat é o AgenClean.


Gerente do projeto: Kleyton Carvalho.




####################### anotação #######################


I/FirebaseAuth(11534): Logging in as golden@gmail.com with empty reCAPTCHA token
W/System  (11534): Ignoring header X-Firebase-Locale because its value was null.
E/RecaptchaCallWrapper(11534): Initial task failed for action RecaptchaAction
(action=signInWithPassword)with exception - 
The supplied auth credential is incorrect, malformed or has expired.




void signUp() async {
    if (passwordController.text != confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Passwords do not match!"),
        ),
      );
      return;
    }

    // get auth service
    final authService = Provider.of<AuthService>(context, listen: false);

    try {
      await authService.createUserWithEmailandPassword(
        emailController.text,
        passwordController.text,
      );
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }