# Sistema_en_bash

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
