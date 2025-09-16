# Sistema_en_bash

# 🗂️ Sistema de gestión de carpetas en Bash

Script en Bash que permite gestionar carpetas dentro de un workspace temporal. Incluye menú interactivo, validaciones estrictas, colores, logs, pruebas automáticas y documentación clara.

## 📦 Comandos utilizados

<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>Comando</th>
      <th>Función en el script</th>
    </tr>
  </thead>
  <tbody>
    <tr><td><code>mkdir</code></td><td>Crea el workspace y carpetas nuevas.</td></tr>
    <tr><td><code>cd</code></td><td>Accede al workspace para operar exclusivamente allí.</td></tr>
    <tr><td><code>read</code></td><td>Solicita entradas del usuario.</td></tr>
    <tr><td><code>echo</code></td><td>Muestra mensajes y resultados.</td></tr>
    <tr><td><code>find</code></td><td>Lista carpetas existentes.</td></tr>
    <tr><td><code>mv</code></td><td>Renombra carpetas.</td></tr>
    <tr><td><code>rmdir</code></td><td>Elimina carpetas vacías.</td></tr>
    <tr><td><code>rm -r</code></td><td>Elimina carpetas no vacías si se confirma.</td></tr>
    <tr><td><code>test</code></td><td>Valida condiciones lógicas.</td></tr>
    <tr><td><code>case</code></td><td>Gestiona el menú principal.</td></tr>
    <tr><td><code>while</code></td><td>Mantiene el menú activo.</td></tr>
    <tr><td><code>xargs</code></td><td>Limpia espacios en entradas del usuario.</td></tr>
    <tr><td><code>tput</code></td><td>Agrega color a la interfaz (opcional).</td></tr>
  </tbody>
</table>

## contenido extra

<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>Función extra</th>
      <th>Descripción</th>
      <th>Propósito</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>Colores ANSI</code></td>
      <td>Mensajes con colores usando secuencias ANSI (<code>\033</code>) o <code>tput</code>.</td>
      <td>Mejorar la experiencia visual y destacar errores o confirmaciones.</td>
    </tr>
    <tr>
      <td><code>Logging</code></td>
      <td>Función <code>log()</code> que guarda acciones del usuario en <code>workspace.log</code>.</td>
      <td>Registrar actividad para depuración o seguimiento.</td>
    </tr>
    <tr>
      <td><code>Modularización</code></td>
      <td>Cada acción del menú está separada en funciones independientes.</td>
      <td>Facilita mantenimiento, lectura y reutilización del código.</td>
    </tr>
    <tr>
      <td><code>Validación estricta</code></td>
      <td>Evita nombres vacíos, rutas absolutas, <code>/</code>, <code>..</code>, etc.</td>
      <td>Evitar errores y proteger el entorno de trabajo.</td>
    </tr>
    <tr>
      <td><code>Trim de entradas</code></td>
      <td>Uso de <code>xargs</code> para eliminar espacios extremos en nombres ingresados.</td>
      <td>Evitar errores por nombres mal formateados.</td>
    </tr>
    <tr>
      <td><code>Pruebas automáticas</code></td>
      <td>Script <code>test_menu.sh</code> que simula casos de uso básicos.</td>
      <td>Verificar que las funciones principales del script operan correctamente.</td>
    </tr>
    <tr>
      <td><code>README en Markdown</code></td>
      <td>Documentación clara con tabla HTML y explicación de comandos.</td>
      <td>Presentar el proyecto de forma profesional y didáctica.</td>
    </tr>
    <tr>
      <td><code>.gitignore</code></td>
      <td>Archivo para ignorar logs y carpetas temporales en el repositorio.</td>
      <td>Mantener el repositorio limpio y enfocado en el código fuente.</td>
    </tr>
  </tbody>
</table>

## como ejecutar

chmod +x menu_carpetas.sh
./menu_carpetas.sh

## como testearlo

chmod +x test_menu.sh
./test_menu.sh

## logs 

Se genera automáticamente un archivo workspace.log dentro del workspace para registrar acciones del usuario.

