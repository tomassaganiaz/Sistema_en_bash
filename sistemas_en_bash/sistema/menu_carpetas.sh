#!/bin/bash

# ─────────────────────────────────────────────
# 🗂️ Sistema de gestión de carpetas en Bash
# Autor: Tomás
# Descripción: Menú interactivo con validaciones, colores, logs y modularización
# ─────────────────────────────────────────────

# Workspace
WORKSPACE="/tmp/tp_carpetas_$USER"
mkdir -p "$WORKSPACE"
cd "$WORKSPACE" || exit 1

# Colores ANSI
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # Sin color

# Logging
LOGFILE="$WORKSPACE/workspace.log"
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}

# Validar nombre de carpeta
validar_nombre() {
    local nombre="$1"
    [[ -z "$nombre" || "$nombre" =~ ^[[:space:]]*$ || "$nombre" =~ [/] || "$nombre" == ".." || "$nombre" == "." ]] && return 1
    return 0
}

# Crear carpeta
crear_carpeta() {
    read -rp "📁 Ingrese nombre de carpeta: " nombre
    nombre="$(echo "$nombre" | xargs)"
    if ! validar_nombre "$nombre"; then
        echo -e "${RED}❌ Nombre inválido.${NC}"
    elif [ -d "$nombre" ]; then
        echo -e "${YELLOW}⚠️ La carpeta ya existe.${NC}"
    else
        mkdir "$nombre" && echo -e "${GREEN}✅ Carpeta '$nombre' creada.${NC}"
        log "Carpeta '$nombre' creada."
    fi
}

# Listar carpetas
listar_carpetas() {
    echo -e "${BLUE}📂 Carpetas en $WORKSPACE:${NC}"
    find . -maxdepth 1 -type d ! -name "." | sed 's|^\./||'
}

# Renombrar carpeta
renombrar_carpeta() {
    read -rp "🔄 Nombre actual: " origen
    read -rp "🆕 Nuevo nombre: " destino
    origen="$(echo "$origen" | xargs)"
    destino="$(echo "$destino" | xargs)"
    if ! validar_nombre "$origen" || ! validar_nombre "$destino"; then
        echo -e "${RED}❌ Nombres inválidos.${NC}"
    elif [ ! -d "$origen" ]; then
        echo -e "${RED}❌ Carpeta origen no existe.${NC}"
    elif [ -e "$destino" ]; then
        echo -e "${YELLOW}⚠️ Ya existe una carpeta con ese nombre.${NC}"
    else
        mv "$origen" "$destino" && echo -e "${GREEN}✅ Renombrada a '$destino'.${NC}"
        log "Carpeta '$origen' renombrada a '$destino'."
    fi
}

# Eliminar carpeta
eliminar_carpeta() {
    read -rp "🗑️ Nombre de carpeta a eliminar: " nombre
    nombre="$(echo "$nombre" | xargs)"
    if ! validar_nombre "$nombre"; then
        echo -e "${RED}❌ Nombre inválido.${NC}"
    elif [ ! -d "$nombre" ]; then
        echo -e "${RED}❌ Carpeta no existe.${NC}"
    elif [ "$(ls -A "$nombre")" ]; then
        read -rp "⚠️ La carpeta no está vacía. ¿Eliminar forzadamente? (S/N): " opcion
        if [[ "$opcion" =~ ^[Ss]$ ]]; then
            rm -r "$nombre" && echo -e "${GREEN}✅ Carpeta eliminada forzadamente.${NC}"
            log "Carpeta '$nombre' eliminada forzadamente."
        else
            echo -e "${YELLOW}🚫 No se eliminó.${NC}"
        fi
    else
        rmdir "$nombre" && echo -e "${GREEN}✅ Carpeta vacía eliminada.${NC}"
        log "Carpeta '$nombre' eliminada."
    fi
}

# Menú principal
while true; do
    echo -e "\n${BLUE}📋 MENÚ:${NC}"
    echo "1) Crear carpeta"
    echo "2) Listar carpetas"
    echo "3) Renombrar carpeta"
    echo "4) Eliminar carpeta"
    echo "5) Salir"
    read -rp "Seleccione una opción: " opcion
    case "$opcion" in
        1) crear_carpeta ;;
        2) listar_carpetas ;;
        3) renombrar_carpeta ;;
        4) eliminar_carpeta ;;
        5) echo -e "${GREEN}👋 Saliendo...${NC}"; exit 0 ;;
        *) echo -e "${RED}❌ Opción inválida.${NC}" ;;
    esac
done
