#!/bin/bash

# Script para crear estructura del Bootcamp Arquitectura Cloud
# Basado en el cronograma: Fundamentos de Arquitectura Cloud
# Autor: Mejorado con fechas y navegación completa
# Fecha: $(date +%Y-%m-%d)

# Colores
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}☁️  Iniciando creación del repo: Fundamentos de Arquitectura Cloud${NC}"

# ==========================================
# 1. Definición de Estructura de Datos
# ==========================================

# Definir módulos y sus clases CON FECHAS
declare -A modulos_data

# Módulo 1
modulos_data["01"]="Modulo_1_Fundamentos_Inicio"
declare -a m01_clases=(
    "M1_AE1_AE2_Perfil_y_Modulos:Perfil laboral y Metodología del bootcamp:1:Lun:05/12/2025"
    "M1_AE4_Herramientas_IA:Herramientas de IA para la programación:3:Mié:10/12/2025"
    "M1_AE5_Sobriedad_Digital:Sobriedad digital:4:Jue:12/12/2025"
)

# Módulo 2
modulos_data["02"]="Modulo_2_Arquitectura_Software"
declare -a m02_clases=(
    "M2_AE1_Evolucion_Modelos:Evolución de los modelos de distribución:5:Vie:15/12/2025"	
    "M2_AE2_Arquitectura_Software:Arquitectura de software:6:Mié:17/12/2025"
    "M2_AE3_Rol_Arquitecto:Rol del arquitecto en equipos ágiles:7:Vie:19/12/2025"
    "M2_AE4_Pilares_Fundamentales:Pilares fundamentales de la arquitectura:8:Lun:22/12/2025"
)

# Módulo 3
modulos_data["03"]="Modulo_3_Intro_Cloud"
declare -a m03_clases=(
    "M3_AE1_Intro_Cloud:Introducción a la computación en la nube:9:Lun:05/01/2026"
    "M3_AE2_Modelos_Servicio:Modelos de servicio en la nube:10:Mié:07/01/2026"
    "M3_AE3_Modelos_Implementacion:Modelos de implementación en la nube:11:Lun:12/01/2026"
    "M3_AE4_Principios_Diseno:Principios fundamentales de diseño de una arquitectura:12:Vie:14/01/2026"
    "M3_AE5_Atributos_Calidad:Principales atributos de calidad en una arquitectura en la nube:13:Mié:16/01/2026"
)

# Módulo 4
modulos_data["04"]="Modulo_4_Servicios_Core"
declare -a m04_clases=(
    "M4_AE1_Almacenamiento:Almacenamiento en cloud:14:Lun:19/01/2026"
    "M4_AE2_Bases_Datos_Relacionales:Servicios de bases de datos relacionales:15:Vie:21/01/2026"
    "M4_AE3_Bases_Datos_NoSQL:Servicios de bases de datos nosql:16:Vie:23/01/2026"
    "M4_AE5_Servicios_Computo:Servicios de cómputo:17:Lun:26/01/2026"
    "M4_AE5_Red_Nube_1:Servicios de red en la nube:18:Mié:28/01/2026"
    "M4_AE5_Red_Nube_2:Servicios de red en la nube:19:Vie:30/01/2026"
    "M4_AE6_Notificacion_Mensajeria:Servicios de notificación y mensajería:20:Vie:02/02/2026"
    "M4_AE7_Alojamiento_Web_1:Servicios simples de alojamiento web y contenidos:21:Mié:04/02/2026"
    "M4_AE7_Alojamiento_Web_2:Servicios simples de alojamiento web y contenidos:22:Vie:06/02/2026"
    "M4_AE8_Monitoreo:Servicios de monitoreo y correlación de incidentes:23:Lun:09/02/2026"
)

# Módulo 5
modulos_data["05"]="Modulo_5_Arquitecturas_Almacenamiento"
declare -a m05_clases=(
    "M5_AE1_Almacenamiento_Objetos:Arquitecturas de almacenamiento de objetos:24:Mié:11/02/2026"
    "M5_AE2_Estrategias_Respaldo:Estrategias de almacenamiento y respaldo en la nube:25:Vie:13/02/2026"
    "M5_AE3_Nubes_Hibridas:Arquitecturas de nubes públicas, privadas e híbridas:26:Lun:16/02/2026"
    "M5_AE4_Escalabilidad_Computo:Escalabilidad de servicios de cómputo:27:Mié:18/02/2026"
    "M5_AE5_Disponibilidad_App_1:Disponibilidad de aplicaciones en la red:28:Lun:20/02/2026"
    "M5_AE5_Disponibilidad_App_2:Disponibilidad de aplicaciones en la red:29:Vie:23/02/2026"
    "M5_AE6_Disponibilidad_Contenidos_1:Disponibilidad de contenidos de aplicaciones cloud:30:Mié:25/02/2026"
    "M5_AE6_Disponibilidad_Contenidos_2:Disponibilidad de contenidos de aplicaciones cloud:31:Vie:27/02/2026"
    "M5_AE7_Arquitecturas_Mensajes:Arquitecturas básicas orientadas a mensajes:32:Lun:02/03/2026"
    "M5_AE8_Costos_Nube:Administración de costos en la nube:33:Mié:04/03/2026"
)

# Módulo 6
modulos_data["06"]="Modulo_6_Escalabilidad_Monolitos_Contenedores"
declare -a m06_clases=(
    "M6_AE1_Escalabilidad_Monolitica:Conceptos generales de escalabilidad en arquitecturas monolíticas:34:Vie:06/03/2026"
    "M6_AE2_Implementacion_Monolitica:Implementación de una arquitectura monolítica:35:Lun:09/03/2026"
    "M6_AE3_Escalabilidad_Alta_Disp_1:Implementación de escalabilidad y alta disponibilidad:36:Mié:11/03/2026"
    "M6_AE3_Escalabilidad_Alta_Disp_2:Implementación de escalabilidad y alta disponibilidad:37:Vie:13/03/2026"
    "M6_AE4_Contenedores_1:Implementación mediante contenedores de aplicación:38:Lun:16/03/2026"
    "M6_AE4_Contenedores_2:Implementación mediante contenedores de aplicación:39:Mié:18/03/2026"
    "M6_AE5_Mensajeria_Cloud:Implementación de servicios de mensajería cloud:40:Vie:20/03/2026"
    "M6_AE6_Representacion_Cloud:Representación de una arquitectura cloud:41:Lun:23/03/2026"
)

# Módulo 7
modulos_data["07"]="Modulo_7_Microservicios"
declare -a m07_clases=(
    "M7_AE1_Intro_Microservicios_1:Introducción a las arquitectura de microservicios:42:Mié:25/03/2026"
    "M7_AE1_Intro_Microservicios_2:Introducción a las arquitectura de microservicios:43:Vie:27/03/2026"
    "M7_AE2_Patrones_Microservicios_1:Patrones de la arquitectura de microservicios:44:Lun:30/03/2026"
    "M7_AE2_Patrones_Microservicios_2:Patrones de la arquitectura de microservicios:45:Mié:01/04/2026"
    "M7_AE3_Orquestacion_Contenedores_1:Implementación con orquestación de contenedores:46:Lun:06/04/2026"
    "M7_AE3_Orquestacion_Contenedores_2:Implementación con orquestación de contenedores:47:Mié:08/04/2026"
    "M7_AE4_Arquitectura_Orientada_Microservicios_1:Representación de una arquitectura cloud orientada a microservicios:48:Lun:10/04/2026"
    "M7_AE4_Arquitectura_Orientada_Microservicios_2:Representación de una arquitectura cloud orientada a microservicios:49:Lun:13/04/2026"
)

# Módulo 8
modulos_data["08"]="Modulo_8_Serverless"
declare -a m08_clases=(
    "M8_AE1_Intro_Serverless:Introducción a la arquitectura sin servidor:50:Mié:15/04/2026"
    "M8_AE2_Sitios_Serverless:Sitios web simples con tecnología serverless en la nube:51:Vie:17/04/2026"
    "M8_AE3_FaaS:Funciones como servicio (FaaS):52:Lun:20/04/2026"
    "M8_AE4_API_Gateway:API gateway:53:Mié:22/04/2026"
    "M8_AE5_Persistencia_Serverless_1:Implementación de persistencia serverless:54:Vie:24/04/2026"
    "M8_AE5_Persistencia_Serverless_2:Implementación de persistencia serverless:55:Lun:27/04/2026"
    "M8_AE6_Representacion_Serverless:Representación de una arquitectura cloud sin servidor:56:Mié:29/04/2026"
    "M8_AE7_Optimizacion_Recursos:Crecimiento y optimización de recursos:57:Lun:04/05/2026"
)

# Módulo 9
modulos_data["09"]="Modulo_9_Seguridad_Compliance"
declare -a m09_clases=(
    "M9_AE1_Principios_Seguridad:Principios de seguridad en la nube:58:Mié:06/05/2026"
    "M9_AE2_Normas_Internacionales:Normas internacionales:59:Vie:08/05/2026"
    "M9_AE3_Compliance:El modelo de compliance y seguridad automatizada:60:Lun:11/05/2026"
    "M9_AE4_Seguridad_Aplicativo:Seguridad de aplicativo:61:Mié:13/05/2026"
    "M9_AE5_Auth_Cloud:Introducción a la autenticación y autorización en cloud:62:Vie:15/05/2026"
    "M9_AE6_Auditorias:Auditorías tradicionales y su evolución al cloud:63:Lun:18/05/2026"
)

# Módulo 10
modulos_data["10"]="Modulo_10_Portafolio"
declare -a m10_clases=(
    "M10_AE1_Portafolio:El portafolio de productos:64:Mié:20/05/2026"
    "M10_AE2_Finalizacion:Finalización del proyecto:65:Vie:22/05/2026"
    "M10_AE3_Herramientas:Herramientas para la implementación de un portafolio:66:Lun:25/05/2026"
)

# Módulo 11
modulos_data["11"]="Modulo_11_Career_Services"
declare -a m11_clases=(
    "M11_AE1_Plan_Busqueda:El plan de búsqueda laboral:67:Mié:27/05/2026"
    "M11_AE2_CV:Confección y publicación del currículum vitae:68:Vie:29/05/2026"
    "M11_AE3_Entrevistas:Cómo enfrentar entrevistas laborales:69:Lun:01/06/2026"
)

# Array ordenado de módulos
modulos_orden=("01" "02" "03" "04" "05" "06" "07" "08" "09" "10" "11")

# ==========================================
# 2. Función para obtener clase anterior
# ==========================================
get_prev_link() {
    local current_mod_num=$1
    local current_class_idx=$2
    
    local prev_link=""
    
    # Caso 1: Clase anterior en el mismo módulo
    if [ $current_class_idx -gt 0 ]; then
        local prev_array="m${current_mod_num}_clases[$((current_class_idx - 1))]"
        eval "local prev_class=\${$prev_array}"
        IFS=':' read -r prev_folder prev_title prev_dia prev_dow prev_fecha <<< "$prev_class"
        prev_link=" | [← Actividad Anterior](../$prev_folder/README.md)"
    else
        # Caso 2: Última clase del módulo anterior
        local prev_mod_idx=-1
        for idx in "${!modulos_orden[@]}"; do
            if [ "${modulos_orden[$idx]}" = "$current_mod_num" ]; then
                prev_mod_idx=$((idx - 1))
                break
            fi
        done
        
        if [ $prev_mod_idx -ge 0 ]; then
            local prev_mod_num="${modulos_orden[$prev_mod_idx]}"
            local prev_mod_folder="${modulos_data[$prev_mod_num]}"
            local prev_array_name="m${prev_mod_num}_clases[@]"
            
            eval "local prev_clases=(\"\${$prev_array_name}\")"
            local last_idx=$((${#prev_clases[@]} - 1))
            
            if [ $last_idx -ge 0 ]; then
                IFS=':' read -r prev_folder prev_title prev_dia prev_dow prev_fecha <<< "${prev_clases[$last_idx]}"
                prev_link=" | [← Actividad Anterior](../../$prev_mod_folder/$prev_folder/README.md)"
            fi
        fi
    fi
    
    echo "$prev_link"
}

# ==========================================
# 3. Función para obtener siguiente clase
# ==========================================
get_next_link() {
    local current_mod_num=$1
    local current_class_idx=$2
    
    local current_array="m${current_mod_num}_clases[@]"
    eval "local total_clases=\${#$current_array}"
    
    local next_link=""
    
    # Caso 1: Siguiente clase en el mismo módulo
    if [ $((current_class_idx + 1)) -lt $total_clases ]; then
        eval "local next_class=\${m${current_mod_num}_clases[$((current_class_idx + 1))]}"
        IFS=':' read -r next_folder next_title next_dia next_dow next_fecha <<< "$next_class"
        next_link=" | [Actividad Siguiente →](../$next_folder/README.md)"
    else
        # Caso 2: Primera clase del siguiente módulo
        local next_mod_idx=-1
        for idx in "${!modulos_orden[@]}"; do
            if [ "${modulos_orden[$idx]}" = "$current_mod_num" ]; then
                next_mod_idx=$((idx + 1))
                break
            fi
        done
        
        if [ $next_mod_idx -ge 0 ] && [ $next_mod_idx -lt ${#modulos_orden[@]} ]; then
            local next_mod_num="${modulos_orden[$next_mod_idx]}"
            local next_mod_folder="${modulos_data[$next_mod_num]}"
            local next_array="m${next_mod_num}_clases[0]"
            
            eval "local next_first_class=\${$next_array}"
            if [ -n "$next_first_class" ]; then
                IFS=':' read -r next_folder next_title next_dia next_dow next_fecha <<< "$next_first_class"
                next_link=" | [Actividad Siguiente →](../../$next_mod_folder/$next_folder/README.md)"
            fi
        fi
    fi
    
    echo "$next_link"
}

# ==========================================
# 4. Creación del README Principal
# ==========================================

cat > README.md << 'EOF'
# ☁️ Fundamentos de Arquitectura Cloud

Repositorio oficial del bootcamp de Arquitectura Cloud.
Este programa de 11 módulos cubre desde los fundamentos hasta arquitecturas serverless y microservicios.

## 📚 Estructura del Programa

### [Módulo 1: Fundamentos e Inicio](./Modulo_1_Fundamentos_Inicio/README.md)
Perfil laboral, metodología del bootcamp y herramientas básicas.

### [Módulo 2: Arquitectura de Software](./Modulo_2_Arquitectura_Software/README.md)
Fundamentos de arquitectura de software y el rol del arquitecto.

### [Módulo 3: Introducción al Cloud](./Modulo_3_Intro_Cloud/README.md)
Conceptos fundamentales de computación en la nube.

### [Módulo 4: Servicios Core](./Modulo_4_Servicios_Core/README.md)
Servicios esenciales de cloud: almacenamiento, bases de datos, cómputo y red.

### [Módulo 5: Arquitecturas de Almacenamiento](./Modulo_5_Arquitecturas_Almacenamiento/README.md)
Estrategias avanzadas de almacenamiento y disponibilidad.

### [Módulo 6: Escalabilidad y Contenedores](./Modulo_6_Escalabilidad_Monolitos_Contenedores/README.md)
Arquitecturas monolíticas, contenedores y escalabilidad.

### [Módulo 7: Microservicios](./Modulo_7_Microservicios/README.md)
Diseño e implementación de arquitecturas de microservicios.

### [Módulo 8: Arquitectura Serverless](./Modulo_8_Serverless/README.md)
Aplicaciones sin servidor y optimización de recursos.

### [Módulo 9: Seguridad y Compliance](./Modulo_9_Seguridad_Compliance/README.md)
Principios de seguridad, normas y auditorías en cloud.

### [Módulo 10: Portafolio](./Modulo_10_Portafolio/README.md)
Desarrollo del portafolio profesional.

### [Módulo 11: Career Services](./Modulo_11_Career_Services/README.md)
Preparación para el mercado laboral.

---

## 🎯 Objetivos del Programa

- ☁️ Dominar los fundamentos de arquitectura cloud
- 🏗️ Diseñar soluciones escalables y seguras
- 🚀 Implementar arquitecturas modernas (microservicios, serverless)
- 🔒 Aplicar mejores prácticas de seguridad y compliance
- 💼 Desarrollar un portafolio profesional

## 📊 Progreso

- [ ] Módulo 1: Fundamentos
- [ ] Módulo 2: Arquitectura Software
- [ ] Módulo 3: Introducción Cloud
- [ ] Módulo 4: Servicios Core
- [ ] Módulo 5: Almacenamiento
- [ ] Módulo 6: Escalabilidad
- [ ] Módulo 7: Microservicios
- [ ] Módulo 8: Serverless
- [ ] Módulo 9: Seguridad
- [ ] Módulo 10: Portafolio
- [ ] Módulo 11: Career Services

---
**Generado automáticamente:** $(date +%Y-%m-%d)
EOF

echo -e "${GREEN}✓ README.md principal creado${NC}"

# ==========================================
# 5. Función Generadora de Módulos
# ==========================================

crear_modulo() {
    local mod_num=$1
    local carpeta_mod="${modulos_data[$mod_num]}"
    local array_name="m${mod_num}_clases[@]"
    
    echo -e "${YELLOW}📂 Creando $carpeta_mod...${NC}"
    mkdir -p "$carpeta_mod"
    
    # Crear README del Módulo
    cat > "$carpeta_mod/README.md" << EOF
# $carpeta_mod

## 📅 Actividades del Módulo

EOF

    # Obtener clases del módulo
    eval "local clases=(\"\${$array_name}\")"
    
    # Listar actividades en el README
    local dia_counter=1
    for clase_info in "${clases[@]}"; do
        IFS=':' read -r carpeta titulo dia dow fecha <<< "$clase_info"
        echo "${dia_counter}. [$titulo](./$carpeta/README.md) - 📆 Día $dia ($dow $fecha)" >> "$carpeta_mod/README.md"
        ((dia_counter++))
    done
    
    echo -e "\n---\n[🏠 Volver al índice principal](../README.md)" >> "$carpeta_mod/README.md"

    # Crear carpetas de cada clase
    local total_clases=${#clases[@]}
    
    for (( i=0; i<$total_clases; i++ )); do
        IFS=':' read -r carpeta titulo dia dow fecha <<< "${clases[$i]}"
        
        # Crear estructura
        mkdir -p "$carpeta_mod/$carpeta"/{documentos,imagenes,codigo}
        
        # Obtener links de navegación
        local prev_link=$(get_prev_link "$mod_num" "$i")
        local next_link=$(get_next_link "$mod_num" "$i")
        
        # Crear README de la clase
        cat > "$carpeta_mod/$carpeta/README.md" << EOF
# 📘 Día $dia: $titulo

> **📅 Fecha programada**: $dow, $fecha  
> **⏰ Bootcamp**: Fundamentos de Arquitectura Cloud

---

## 🚧 En Construcción

Este contenido corresponde a la clase del **Día $dia**:  
**$titulo**

---

## 📋 Objetivos de Aprendizaje

- [ ] Completar la lectura del material teórico
- [ ] Realizar ejercicios prácticos propuestos
- [ ] Implementar código de ejemplo
- [ ] Documentar conceptos clave aprendidos
- [ ] Resolver cuestionario de autoevaluación

---

## 📁 Estructura de Carpetas

\`\`\`
$carpeta/
├── 📄 documentos/    # Material de lectura, PDFs, referencias
├── 🖼️  imagenes/      # Diagramas, capturas de pantalla, esquemas
└── 💻 codigo/        # Implementaciones, scripts, ejercicios
\`\`\`

### 📄 Documentos
Material teórico, guías de estudio y referencias bibliográficas.

### 🖼️ Imágenes
Diagramas de arquitectura, capturas de pantalla y material visual.

### 💻 Código
Implementaciones prácticas, scripts y ejercicios de la sesión.

---

## 🔗 Navegación

[🏠 Índice Principal](../../README.md) | [📚 Volver al Módulo](../README.md)$prev_link$next_link

---

## 📝 Notas

*Espacio para tus apuntes y observaciones personales*

EOF
        
        echo -e "  ${GREEN}✓${NC} Creada: Día $dia - $carpeta"
    done
}

# ==========================================
# 6. Ejecución de Creación
# ==========================================

echo ""
for mod_num in "${modulos_orden[@]}"; do
    crear_modulo "$mod_num"
done

echo ""
echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}✅ Estructura Cloud Architecture creada exitosamente${NC}"
echo -e "${BLUE}════════════════════════════════════════════════════════════${NC}"
echo ""
echo -e "${CYAN}📊 Estadísticas del Repositorio:${NC}"
echo -e "  ${MAGENTA}📦${NC} 11 Módulos generados"
echo -e "  ${MAGENTA}📅${NC} 69 Días de contenido estructurado"
echo -e "  ${MAGENTA}🔗${NC} Navegación bidireccional completa (Anterior/Siguiente)"
echo -e "  ${MAGENTA}📝${NC} READMEs con fechas del cronograma"
echo -e "  ${MAGENTA}📁${NC} Carpetas documentos/imagenes/codigo en cada actividad"
echo -e "  ${MAGENTA}🎯${NC} Objetivos de aprendizaje por sesión"
echo ""
echo -e "${BLUE}📖 Cómo usar este repositorio:${NC}"
echo -e "  1️⃣  Sigue el cronograma día a día"
echo -e "  2️⃣  Completa los objetivos de cada sesión"
echo -e "  3️⃣  Documenta tu progreso en cada carpeta"
echo -e "  4️⃣  Usa los links de navegación para moverte entre clases"
echo ""
echo -e "${GREEN}🎉 ¡Listo para comenzar tu viaje en Cloud Architecture!${NC}"
echo ""
