

fecha=$(date "+%d-%m-%Y %T")
mensaje="$fecha Mi primera chamba"

archivo="nuevo/masita"

# Verificar si el archivo existe
if [ -f "$archivo" ]; then
    echo "$mensaje" >> "$archivo"
    echo "Se ha añadido la nueva línea con la fecha actual al archivo existente."
else
    echo "El archivo no existe. Creando uno nuevo..."
    mkdir -p nuevo  # -p para crear el directorio solo si no existe
    touch "$archivo"
    echo "$mensaje" > "$archivo"
    echo "Se ha creado un nuevo archivo con la línea de fecha actual."
fi
