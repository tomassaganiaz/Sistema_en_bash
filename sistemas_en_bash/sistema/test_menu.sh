#!/bin/bash

# Workspace de pruebas
WORKSPACE="/tmp/tp_carpetas_test"
mkdir -p "$WORKSPACE"
cd "$WORKSPACE" || exit 1

echo "🔍 Test: Crear carpeta 'test1'"
mkdir test1
[ -d test1 ] && echo "✅ Carpeta creada correctamente." || echo "❌ Falló la creación."

echo "🔍 Test: Renombrar 'test1' a 'test_renamed'"
mv test1 test_renamed
[ -d test_renamed ] && echo "✅ Renombramiento exitoso." || echo "❌ Falló el renombramiento."

echo "🔍 Test: Eliminar carpeta vacía 'test_renamed'"
rmdir test_renamed
[ ! -d test_renamed ] && echo "✅ Carpeta eliminada." || echo "❌ Falló la eliminación."

echo "🔍 Test: Crear carpeta no vacía 'test2'"
mkdir test2 && touch test2/archivo.txt
[ -f test2/archivo.txt ] && echo "✅ Carpeta con archivo creada."

echo "🔍 Test: Eliminar carpeta no vacía con rm -r"
rm -r test2
[ ! -d test2 ] && echo "✅ Carpeta no vacía eliminada." || echo "❌ Falló la eliminación forzada."

echo "🧪 Tests finalizados."
