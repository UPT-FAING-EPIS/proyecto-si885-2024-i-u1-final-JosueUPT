
-- costo total del mes de enero de todos los años disponibles,
SELECT 
    'Enero' AS Mes,
    Anio,
    SUM(Importe) AS CostoTotal
FROM (
    SELECT Anio, Importe FROM Enero_2018 WHERE Mes = 'Enero'
    UNION ALL
    SELECT Anio, Importe FROM Enero_2019 WHERE Mes = 'Enero'
    UNION ALL
    SELECT Anio, Importe FROM Enero_2020 WHERE Mes = 'Enero'
    UNION ALL
    SELECT Anio, Importe FROM Enero_2021 WHERE Mes = 'Enero'
    UNION ALL
    SELECT Anio, Importe FROM Enero_2022 WHERE Mes = 'Enero'
    UNION ALL
    SELECT Anio, Importe FROM Enero_2023 WHERE Mes = 'Enero'
) AS AllYears
GROUP BY Anio
ORDER BY Anio;

-- costo total por año
SELECT 
    Anio,
    SUM(Importe) AS CostoTotalPorAnio
FROM (
    SELECT Anio, Importe FROM Enero_2018
    UNION ALL
    SELECT Anio, Importe FROM Febrero_2018
    UNION ALL
    SELECT Anio, Importe FROM Marzo_2018
    UNION ALL
    SELECT Anio, Importe FROM Abril_2018
    UNION ALL
    SELECT Anio, Importe FROM Mayo_2018
    UNION ALL
    SELECT Anio, Importe FROM Junio_2018
    UNION ALL
    SELECT Anio, Importe FROM Julio_2018
    UNION ALL
    SELECT Anio, Importe FROM Agosto_2018
    UNION ALL
    SELECT Anio, Importe FROM Septiembre_2018
    UNION ALL
    SELECT Anio, Importe FROM Octubre_2018
    UNION ALL
    SELECT Anio, Importe FROM Noviembre_2018
    UNION ALL
    SELECT Anio, Importe FROM Diciembre_2018
    UNION ALL
    SELECT Anio, Importe FROM Enero_2019
    UNION ALL
    SELECT Anio, Importe FROM Febrero_2019
    UNION ALL
    SELECT Anio, Importe FROM Marzo_2019
    UNION ALL
    SELECT Anio, Importe FROM Abril_2019
    UNION ALL
    SELECT Anio, Importe FROM Mayo_2019
    UNION ALL
    SELECT Anio, Importe FROM Junio_2019
    UNION ALL
    SELECT Anio, Importe FROM Julio_2019
    UNION ALL
    SELECT Anio, Importe FROM Agosto_2019
    UNION ALL
    SELECT Anio, Importe FROM Septiembre_2019
    UNION ALL
    SELECT Anio, Importe FROM Octubre_2019
    UNION ALL
    SELECT Anio, Importe FROM Noviembre_2019
    UNION ALL
    SELECT Anio, Importe FROM Diciembre_2019
    UNION ALL
    SELECT Anio, Importe FROM Enero_2020
    UNION ALL
    SELECT Anio, Importe FROM Febrero_2020
    UNION ALL
    SELECT Anio, Importe FROM Marzo_2020
    UNION ALL
    SELECT Anio, Importe FROM Abril_2020
    UNION ALL
    SELECT Anio, Importe FROM Mayo_2020
    UNION ALL
    SELECT Anio, Importe FROM Junio_2020
    UNION ALL
    SELECT Anio, Importe FROM Julio_2020
    UNION ALL
    SELECT Anio, Importe FROM Agosto_2020
    UNION ALL
    SELECT Anio, Importe FROM Septiembre_2020
    UNION ALL
    SELECT Anio, Importe FROM Octubre_2020
    UNION ALL
    SELECT Anio, Importe FROM Noviembre_2020
    UNION ALL
    SELECT Anio, Importe FROM Diciembre_2020
    UNION ALL
    SELECT Anio, Importe FROM Enero_2021
    UNION ALL
    SELECT Anio, Importe FROM Febrero_2021
    UNION ALL
    SELECT Anio, Importe FROM Marzo_2021
    UNION ALL
    SELECT Anio, Importe FROM Abril_2021
    UNION ALL
    SELECT Anio, Importe FROM Mayo_2021
    UNION ALL
    SELECT Anio, Importe FROM Junio_2021
    UNION ALL
    SELECT Anio, Importe FROM Julio_2021
    UNION ALL
    SELECT Anio, Importe FROM Agosto_2021
    UNION ALL
    SELECT Anio, Importe FROM Septiembre_2021
    UNION ALL
    SELECT Anio, Importe FROM Octubre_2021
    UNION ALL
    SELECT Anio, Importe FROM Noviembre_2021
    UNION ALL
    SELECT Anio, Importe FROM Diciembre_2021
    UNION ALL
    SELECT Anio, Importe FROM Enero_2022
    UNION ALL
    SELECT Anio, Importe FROM Febrero_2022
    UNION ALL
    SELECT Anio, Importe FROM Marzo_2022
    UNION ALL
    SELECT Anio, Importe FROM Abril_2022
    UNION ALL
    SELECT Anio, Importe FROM Mayo_2022
    UNION ALL
    SELECT Anio, Importe FROM Junio_2022
    UNION ALL
    SELECT Anio, Importe FROM Julio_2022
    UNION ALL
    SELECT Anio, Importe FROM Agosto_2022
    UNION ALL
    SELECT Anio, Importe FROM Septiembre_2022
    UNION ALL
    SELECT Anio, Importe FROM Octubre_2022
    UNION ALL
    SELECT Anio, Importe FROM Noviembre_2022
    UNION ALL
    SELECT Anio, Importe FROM Diciembre_2022
    UNION ALL
    SELECT Anio, Importe FROM Enero_2023
    UNION ALL
    SELECT Anio, Importe FROM Febrero_2023
    UNION ALL
    SELECT Anio, Importe FROM Marzo_2023
    UNION ALL
    SELECT Anio, Importe FROM Abril_2023
    UNION ALL
    SELECT Anio, Importe FROM Mayo_2023
    UNION ALL
    SELECT Anio, Importe FROM Junio_2023
    UNION ALL
    SELECT Anio, Importe FROM Julio_2023
    UNION ALL
    SELECT Anio, Importe FROM Agosto_2023
    UNION ALL
    SELECT Anio, Importe FROM Septiembre_2023
    UNION ALL
    SELECT Anio, Importe FROM Octubre_2023
    UNION ALL
    SELECT Anio, Importe FROM Noviembre_2023
    UNION ALL
    SELECT Anio, Importe FROM Diciembre_2023
) AS AllMonths
GROUP BY Anio
ORDER BY Anio;

-- Coste de area total por año
SELECT 
    Anio,
    [Oficina Term. Terrestre] AS Costo_Total_Oficina_Terrestre,
    [Central telefónica_Fijo] AS Costo_Total_Central_Telefonica_Fijo,
    [Central telefónica_Movil] AS Costo_Total_Central_Telefonica_Movil,
    [Gerentes y Jefes Oficina] AS Costo_Total_Gerentes_Jefes_Oficina
FROM (
    SELECT 
        Anio,
        CASE 
            WHEN Area = 'Oficina Term. Terrestre' THEN 'Oficina Term. Terrestre'
            WHEN Area = 'Central telefónica' AND Tipo = 'Fijo' THEN 'Central telefónica_Fijo'
            WHEN Area = 'Central telefónica' AND Tipo = 'Movil' THEN 'Central telefónica_Movil'
            WHEN Area = 'Gerentes y Jefes Oficina' THEN 'Gerentes y Jefes Oficina'
        END AS Area_Combinada,
        Importe
    FROM (
        SELECT Anio, Area, Tipo, Importe FROM Enero_2018
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Febrero_2018
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Marzo_2018
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Abril_2018
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Mayo_2018
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Junio_2018
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Julio_2018
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Agosto_2018
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Septiembre_2018
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Octubre_2018
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Noviembre_2018
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Diciembre_2018
        UNION ALL
		        SELECT Anio, Area, Tipo, Importe FROM Enero_2019
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Febrero_2019
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Marzo_2019
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Abril_2019
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Mayo_2019
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Junio_2019
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Julio_2019
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Agosto_2019
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Septiembre_2019
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Octubre_2019
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Noviembre_2019
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Diciembre_2019
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Enero_2020
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Febrero_2020
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Marzo_2020
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Abril_2020
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Mayo_2020
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Junio_2020
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Julio_2020
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Agosto_2020
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Septiembre_2020
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Octubre_2020
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Noviembre_2020
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Diciembre_2020
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Enero_2021
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Febrero_2021
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Marzo_2021
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Abril_2021
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Mayo_2021
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Junio_2021
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Julio_2021
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Agosto_2021
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Septiembre_2021
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Octubre_2021
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Noviembre_2021
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Diciembre_2021
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Enero_2022
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Febrero_2022
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Marzo_2022
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Abril_2022
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Mayo_2022
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Junio_2022
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Julio_2022
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Agosto_2022
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Septiembre_2022
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Octubre_2022
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Noviembre_2022
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Diciembre_2022
		UNION ALL
		SELECT Anio, Area, Tipo, Importe FROM Enero_2023
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Febrero_2023
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Marzo_2023
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Abril_2023
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Mayo_2023
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Junio_2023
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Julio_2023
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Agosto_2023
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Septiembre_2023
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Octubre_2023
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Noviembre_2023
        UNION ALL
        SELECT Anio, Area, Tipo, Importe FROM Diciembre_2023
    ) AS AllMonths
) AS CostosPorArea
PIVOT (
    SUM(Importe)
    FOR Area_Combinada IN (
        [Oficina Term. Terrestre], 
        [Central telefónica_Fijo], 
        [Central telefónica_Movil],
        [Gerentes y Jefes Oficina]
    )
) AS PivotTable
ORDER BY Anio;


-- Suma del costo de los tipos fijos y móviles por año, ordenado por mes

-- Para el año 2018
SELECT 
    '2018' AS Anio,
    'Enero' AS Mes,
    SUM(CASE WHEN Tipo = 'Fijo' THEN Importe ELSE 0 END) AS Costo_Fijo,
    SUM(CASE WHEN Tipo = 'Movil' THEN Importe ELSE 0 END) AS Costo_Movil
FROM Enero_2018
UNION ALL
SELECT 
    '2018' AS Anio,
    'Febrero' AS Mes,
    SUM(CASE WHEN Tipo = 'Fijo' THEN Importe ELSE 0 END),
    SUM(CASE WHEN Tipo = 'Movil' THEN Importe ELSE 0 END)
FROM Febrero_2018
UNION ALL
SELECT 
    '2018' AS Anio,
    'Marzo' AS Mes,
    SUM(CASE WHEN Tipo = 'Fijo' THEN Importe ELSE 0 END),
    SUM(CASE WHEN Tipo = 'Movil' THEN Importe ELSE 0 END)
FROM Marzo_2018
UNION ALL
SELECT 
    '2018' AS Anio,
    'Abril' AS Mes,
    SUM(CASE WHEN Tipo = 'Fijo' THEN Importe ELSE 0 END),
    SUM(CASE WHEN Tipo = 'Movil' THEN Importe ELSE 0 END)
FROM Abril_2018
UNION ALL
SELECT 
    '2018' AS Anio,
    'Mayo' AS Mes,
    SUM(CASE WHEN Tipo = 'Fijo' THEN Importe ELSE 0 END),
    SUM(CASE WHEN Tipo = 'Movil' THEN Importe ELSE 0 END)
FROM Mayo_2018
UNION ALL
SELECT 
    '2018' AS Anio,
    'Junio' AS Mes,
    SUM(CASE WHEN Tipo = 'Fijo' THEN Importe ELSE 0 END),
    SUM(CASE WHEN Tipo = 'Movil' THEN Importe ELSE 0 END)
FROM Junio_2018
UNION ALL
SELECT 
    '2018' AS Anio,
    'Julio' AS Mes,
    SUM(CASE WHEN Tipo = 'Fijo' THEN Importe ELSE 0 END),
    SUM(CASE WHEN Tipo = 'Movil' THEN Importe ELSE 0 END)
FROM Julio_2018
UNION ALL
SELECT 
    '2018' AS Anio,
    'Agosto' AS Mes,
    SUM(CASE WHEN Tipo = 'Fijo' THEN Importe ELSE 0 END),
    SUM(CASE WHEN Tipo = 'Movil' THEN Importe ELSE 0 END)
FROM Agosto_2018
UNION ALL
SELECT 
    '2018' AS Anio,
    'Septiembre' AS Mes,
    SUM(CASE WHEN Tipo = 'Fijo' THEN Importe ELSE 0 END),
    SUM(CASE WHEN Tipo = 'Movil' THEN Importe ELSE 0 END)
FROM Septiembre_2018
UNION ALL
SELECT 
    '2018' AS Anio,
    'Octubre' AS Mes,
    SUM(CASE WHEN Tipo = 'Fijo' THEN Importe ELSE 0 END),
    SUM(CASE WHEN Tipo = 'Movil' THEN Importe ELSE 0 END)
FROM Octubre_2018
UNION ALL
SELECT 
    '2018' AS Anio,
    'Noviembre' AS Mes,
    SUM(CASE WHEN Tipo = 'Fijo' THEN Importe ELSE 0 END),
    SUM(CASE WHEN Tipo = 'Movil' THEN Importe ELSE 0 END)
FROM Noviembre_2018
UNION ALL
SELECT 
    '2018' AS Anio,
    'Diciembre' AS Mes,
    SUM(CASE WHEN Tipo = 'Fijo' THEN Importe ELSE 0 END),
    SUM(CASE WHEN Tipo = 'Movil' THEN Importe ELSE 0 END)
FROM Diciembre_2018;



-- Suma del costo total de los tipos fijos y móviles por trimestre para el año 2018
SELECT 
    '2018 Q1' AS Trimestre,
    SUM(CASE WHEN Tipo = 'Fijo' THEN Importe ELSE 0 END) AS Costo_Total_Fijo,
    SUM(CASE WHEN Tipo = 'Movil' THEN Importe ELSE 0 END) AS Costo_Total_Movil,
    SUM(Importe) AS Costo_Total
FROM (
    SELECT * FROM Enero_2018
    UNION ALL
    SELECT * FROM Febrero_2018
    UNION ALL
    SELECT * FROM Marzo_2018
) AS Q1_2018

UNION ALL

SELECT 
    '2018 Q2' AS Trimestre,
    SUM(CASE WHEN Tipo = 'Fijo' THEN Importe ELSE 0 END),
    SUM(CASE WHEN Tipo = 'Movil' THEN Importe ELSE 0 END),
    SUM(Importe)
FROM (
    SELECT * FROM Abril_2018
    UNION ALL
    SELECT * FROM Mayo_2018
    UNION ALL
    SELECT * FROM Junio_2018
) AS Q2_2018

UNION ALL

SELECT 
    '2018 Q3' AS Trimestre,
    SUM(CASE WHEN Tipo = 'Fijo' THEN Importe ELSE 0 END),
    SUM(CASE WHEN Tipo = 'Movil' THEN Importe ELSE 0 END),
    SUM(Importe)
FROM (
    SELECT * FROM Julio_2018
    UNION ALL
    SELECT * FROM Agosto_2018
    UNION ALL
    SELECT * FROM Septiembre_2018
) AS Q3_2018

UNION ALL

SELECT 
    '2018 Q4' AS Trimestre,
    SUM(CASE WHEN Tipo = 'Fijo' THEN Importe ELSE 0 END),
    SUM(CASE WHEN Tipo = 'Movil' THEN Importe ELSE 0 END),
    SUM(Importe)
FROM (
    SELECT * FROM Octubre_2018
    UNION ALL
    SELECT * FROM Noviembre_2018
    UNION ALL
    SELECT * FROM Diciembre_2018
) AS Q4_2018;


