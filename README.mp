# Descripción del Dataset: Aterrizajes y Despegues de la ANAC

Este dataset contiene información sobre los aterrizajes y despegues procesados por la Administración Nacional de Aviación Civil (ANAC). Incluye detalles de vuelos realizados en diversos aeropuertos, cubriendo información relevante sobre los vuelos, tales como fecha y hora de los movimientos, aerolíneas, tipo de aeronave, cantidad de pasajeros, y más.

## Columnas del Dataset

- **Fecha UTC**: La fecha en formato UTC en la que se realizó el aterrizaje o despegue.
- **Hora UTC**: La hora en formato UTC en la que se realizó el aterrizaje o despegue.
- **Clase de Vuelo (todos los vuelos)**: Clasificación del vuelo (e.g., comercial, privado).
- **Clasificación Vuelo**: Detalle adicional sobre el tipo de vuelo.
- **Tipo de Movimiento**: Indica si el movimiento es un aterrizaje o despegue.
- **Aeropuerto**: El aeropuerto en el que se realizó el movimiento.
- **Origen / Destino**: El aeropuerto de origen o destino del vuelo.
- **Aerolínea Nombre**: La aerolínea que operó el vuelo.
- **Aeronave**: Tipo o modelo de la aeronave utilizada.
- **Pasajeros**: Número total de pasajeros a bordo.
- **PAX**: Indicador de calidad del dato sobre pasajeros.
- **Calidad dato**: Información sobre la calidad del dato registrado.

## Preguntas de Negocio que se Pueden Responder

1. **¿Cuáles son las aerolíneas con mayor volumen de vuelos (aterrizajes y despegues) en un periodo de tiempo específico?**
   - Esta pregunta permite identificar las aerolíneas más activas en un determinado periodo, lo cual es útil para análisis de mercado y estrategias comerciales.

2. **¿Cuál es el número promedio de pasajeros por vuelo para cada aerolínea en distintos aeropuertos?**
   - Con esta información, se puede evaluar la eficiencia y la ocupación promedio de las aerolíneas, ayudando en la planificación de rutas y asignación de aeronaves.

3. **¿Cómo varía el tráfico aéreo (aterrizajes y despegues) a lo largo del día en diferentes aeropuertos?**
   - Este análisis es útil para la gestión del tráfico aéreo y la optimización de recursos en los aeropuertos, como personal y slots de despegue y aterrizaje.

4. **¿Cuáles son los destinos más populares desde un aeropuerto específico y cómo cambia esta popularidad con el tiempo?**
   - Identificar los destinos más demandados ayuda a las aerolíneas y aeropuertos a ajustar sus servicios y mejorar la experiencia del cliente.

## Uso del Lenguaje SQL

Para responder estas preguntas, se puede utilizar SQL para realizar consultas sobre la base de datos relacional que contiene este dataset. Ejemplos de consultas SQL:

- Para encontrar las aerolíneas con mayor volumen de vuelos:
  ```sql
  SELECT Aerolinea_Nombre, COUNT(*) AS Volumen_Vuelos
  FROM vuelos
  WHERE Fecha_UTC BETWEEN '2023-01-01' AND '2023-12-31'
  GROUP BY Aerolinea_Nombre
  ORDER BY Volumen_Vuelos DESC;
