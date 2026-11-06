# Plantilla Java para VS Code (JDK 21+)

Proyecto sencillo, sin Maven ni Gradle. Abre **esta carpeta** en VS Code.

## Estructura

- `src/presentacion/Main.java`: punto de entrada (`presentacion.Main`).
- `src/dominio/` y `src/aplicacion/`: paquetes para crear clases.
- `bin/`: clases compiladas; `dist/`: JAR; `lib/`: bibliotecas adicionales.
- `.vscode/tasks.json`: tareas; `.vscode/launch.json`: depuración.

## Requisitos

JDK 21 o posterior (`java`, `javac`, `jar` en PATH), VS Code y Extension Pack for Java. En Windows se usa PowerShell 5.1 o posterior, incluido en Windows 10/11.

## Tareas (Terminal > Ejecutar tarea)

- **Compilar**: compila todos los `.java` de `src` a `bin`.
- **Ejecutar**: compila y ejecuta `presentacion.Main`.
- **Limpiar**: borra `.class` de `bin` y `.jar` de `dist`.
- **Crear JAR**: compila y crea `dist/mi-proyecto.jar`.
- **Ejecutar JAR**: crea y ejecuta el JAR.

En Windows, `compilar.bat` llama a `compilar.ps1`, que pasa las rutas directamente a `javac` como argumentos individuales. Así se admiten rutas con espacios y tildes sin archivos temporales de argumentos. La tarea usa `type: process` para evitar interpretaciones de rutas por PowerShell/cmd de VS Code.

En macOS/Linux se utilizan scripts Bash.

**Nota**: las tareas de ejecución y creación de JAR requieren que la clase principal siga siendo `presentacion.Main`. Si se cambia, hay que actualizar los scripts y `.vscode/launch.json`.

## IA en VS Code

`.vscode/settings.json` desactiva las funciones integradas de IA y Copilot en el espacio de trabajo. No impide todas las extensiones de terceros ni sustituye las normas docentes.

## Prueba rápida

1. Ejecuta **Compilar**.
2. Ejecuta **Ejecutar**: debe mostrar `Proyecto Java preparado.`
3. Ejecuta **Crear JAR** y **Ejecutar JAR**.
4. Ejecuta **Limpiar**.
