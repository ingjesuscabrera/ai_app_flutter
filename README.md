# aiBotTalk

> Aplicación Flutter con una interfaz de asistente personal para crear, organizar y explorar conversaciones y contenido.

![Flutter](https://img.shields.io/badge/Flutter-tested%203.24.4-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.4.3%2B-0175C2?logo=dart&logoColor=white)
![Estado](https://img.shields.io/badge/estado-prototipo%20de%20interfaz-orange)

## Descripción

aiBotTalk es un proyecto multiplataforma construido con Flutter. Reúne pantallas de asistente conversacional y herramientas de escritura para distintos escenarios personales, creativos, académicos y profesionales.

**Importante:** el repositorio contiene principalmente la interfaz y flujos de navegación. No incluye una API de IA configurada ni un backend conectado; las pantallas de conversación no deben considerarse un servicio de generación listo para producción.

## Características de la interfaz

| Área | Pantallas y herramientas |
| --- | --- |
| **Asistente** | Inicio, creación de conversaciones, chat, opciones de compartir y estados de conversación |
| **Escritura** | Redacción de artículos, escritura académica, traducción y revisión de plagio |
| **Creatividad** | Letras de canciones, poemas, historias y guiones de películas |
| **Negocios y carrera** | Respuestas para entrevistas, anuncios y publicaciones de empleo |
| **Desarrollo** | Escritura y explicación de código |
| **Uso personal** | Mensajes de cumpleaños, disculpas, invitaciones y chistes |
| **Alimentos** | Recetas y planes de dieta |
| **Cuenta y navegación** | Incorporación inicial, acceso y registro, recuperación de contraseña, perfil, historial, búsqueda, preguntas frecuentes y privacidad |

Las categorías anteriores describen las pantallas disponibles en el proyecto; no implican que las respuestas de IA, la autenticación o la sincronización estén conectadas a servicios externos.

## Tecnologías

- **Flutter y Dart** para la aplicación multiplataforma.
- **GetX** para navegación, bindings y gestión de estado.
- **Shared Preferences** para almacenamiento local sencillo.
- **Flutter SVG** y **Cached Network Image** para recursos visuales.
- **Smooth Page Indicator**, **Dotted Border**, **Intl** y **Share Plus** para componentes de interfaz y utilidades.
- Tipografías y recursos gráficos incluidos en `assets/`.

## Requisitos

- Flutter SDK con Dart **3.4.3 o posterior** y Dart **3.x**.
- Android Studio y Android SDK para ejecutar o compilar en Android.
- Xcode y CocoaPods para compilar en iOS (macOS).

La compilación Android de depuración se ha validado con Flutter **3.24.4** y Dart **3.5.4**.

## Puesta en marcha

```bash
flutter pub get
flutter run
```

Para seleccionar un dispositivo:

```bash
flutter devices
flutter run -d <device-id>
```

En Android, verifica que el emulador aparezca como `device` (no `offline`) antes de ejecutar la app.

## Pruebas y compilación

```bash
flutter analyze
flutter test
flutter build apk --release
```

Para generar un Android App Bundle:

```bash
flutter build appbundle --release
```

## Estructura

```text
lib/
  core/            Utilidades, constantes y componentes comunes
  data/            Cliente API y modelos de datos
  localization/    Textos de la interfaz
  presentation/    Pantallas, controladores y modelos de presentación
  routes/          Rutas y configuración de navegación
  theme/           Estilos y tema visual
  widgets/         Widgets reutilizables
assets/            Imágenes y tipografías
android/           Proyecto nativo Android
ios/               Proyecto nativo iOS
test/              Pruebas Flutter
```

## Estado de integración

- La aplicación inicia en la pantalla de bienvenida y utiliza rutas GetX.
- La capa `ApiClient` está creada, pero todavía no tiene endpoints ni una URL de backend.
- No se debe incluir una clave de API en el cliente móvil. Al integrar IA, configura un backend seguro y conecta la aplicación a ese servicio.

## Licencia y recursos

Antes de publicar o redistribuir la aplicación, confirma que tienes permiso para usar las imágenes, fuentes y demás recursos incluidos en `assets/`.
