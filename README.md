# bayesian_glm
This repo is wor working on the Generalized Bayesian Lineal models final project

# Instrucciones

1) Formar equipos idealmente de 3 personas, mínimo de 2. No se puede hacer el trabajo solo, se penalizará fuertemente si así lo hacen.

2) La idea del trabajo es que muestren que saben usar los modelos que vimos en clase de manera apropiada para resolver un problema práctico. Les pido que consigan una base de datos, preferentemente de sus trabajos o en su defecto de repositorios de internet, que los motive. Una vez teniendo la base de datos se van a formular una serie de objetivos a resolver y en el trabajo van a plasmar que fue lo que hicieron para resolver esos objetivos.

3) El contenido del trabajo escrito es el siguiente:
i. Introducción: descripción del problema, contexto y objetivos a resolver
ii. Descripción de la información: Describan cada una de sus variables, escalas de medición, y presenten un análisis exploratorio de datos
iii. Modelado e implementación: describan con detalle el modelo, con todas sus especificaciones, que usarán para resolver sus objetivos. Corran su modelo en R-OpenBugs-JAGS y den detalles de sus cadenas, convergencia, etc.
iv. Interpretación de resultados: presenten un resumen de sus estimadores e interpreten en el contexto del problema. Seleccionen las variables importantes. Hagan uso de sus resultados para responder a los objetivos planteados y sugieran o tomen decisiones con respecto a esos resultados.
v. Referencias: Incluyan una lista de las fuentes que consultaron para hacer su trabajo, desde páginas de internet, libros, revistas o apuntes de clase.
vi. Apéndice. Incluyan si quieren, todo el código utilizado. Por favor no incluyen código dentro de ninguna de las secciones anteriores.
NOTA: Las gráfica que consideren útiles las pueden incluir en cualquiera de las secciones de la i-iv con comentarios para que el lector vea lo que ustedes quieren que vean. Las gráficas que no sean indispensables las pueden mandar al apéndice.

4) Preparen una presentación de 15 minutos más o menos, el formato es libre. Todos los integrantes tienen que hablar y la calificación de la presentación será individual, mientras que la calificación del trabajo será por equipo. Se penalizará a aquellos equipos que se tarden más del tiempo asignado originalmente en su presentación.

# Propuestas

https://tukanmx.com/

# Discusión

Creo que los datos de hipotecas están muy completos y ademas son públicos, les comparto el URL oficial
https://app.powerbi.com/view?r=eyJrIjoiNDM2ZDc4MjQtOTU4ZC00NTI3LThlZGEtOTZlZTQ3NDUwO[…]6IjVlMmM0OTc3LTEwN2QtNDBhMy04YWY3LTcwMDc0ODFhNjBkNCIsImMiOjR9

# Modelos

Propogno hacer un modelo de regresion para predecir o explicar cantidad de credito otorgado


# Sobre la data

Los datos los agrega la CNBV a partir de los reportes R04H sobre crédito hipotecario que obtienen de aquí https://www.cnbv.gob.mx/Paginas/PortafolioDeInformacion.aspx
y los agregan y analizan aquí https://app.powerbi.com/view?r=eyJrIjoiNDM2ZDc4MjQtOTU4ZC00NTI3LThlZGEtOTZlZTQ3NDUwOGE5IiwidCI6IjVlMmM0OTc3LTEwN2QtNDBhMy04YWY3LTcwMDc0ODFhNjBkNCIsImMiOjR9

Citando su pagina:

'''
La CNBC, a través de la Dirección General de Análisis e Información, con fundamento en el artículo 34, fracciones I y II del reglamento interior, y con el fin de contribuir a la difusión de información que permita el conocimiento, comprensión, investigación, favorezca el análisis y el planteamineto de los retos y cursos de acción viables en materia de cartera a la vivienda de créditos marginales, da a conocer a través del portal de Internet www.gob.mx/cnbv por primera vez, el reporte interactivo de la cartera de vivienda de la Banca Múltiple, Banca de Desarrollo y SOFOM.

La información considera los datos provenientes del reporte regulatorio R04H Cartera vivienda y se presenta la información a partir de enero 2019.

Mediante la publicación y difución de informaicón, la CNBV favorece los criterios para elaborar herramientas que estimulen y mejoren la toma de decisiones y las condiciones de los créditos hipotecarios.

La CNBV continuará trabajando para ampliar la información proporcionada por las instituciones de crédito, siempre procurando su calidad y confiabilidad. El resporte se encuentra disponible en el Portafolio de Información
'''

# Reportes agregados

+ R04 H-0491

+ R04 H-0492

# Notas
