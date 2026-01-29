select * from analisisconversacioncall a 
where a.fecha_conversacion  > '2026-01-15'



select c.created_at,* from  conversacion c 
order by c.created_at desc

where c.created_at   > '2026-01-'


select * from conversacion c 
where c.created_at   > '2026-01-19'

--delete from analisisconversacion
--where created_at > '2026-01-19'

delete  from conversacion c
where c.created_at   > '2026-01-19'



delete  from conversation_analysis_state c
where c.created_at   > '2026-01-19'

select m.conversacionid ,* from mensajes m
where m.created_at   > '2026-01-19'

update mensajes 
set conversacionid = null
where created_at   > '2026-01-19'


where c.prospectid  = 'y3TlTbhi3Ww6yJmbfkT9v7oW'


select * from mensajes m 
where m.conversacionid  = '350'


select * from analisisconversacion a 
where a.conversacionid  = '350'


select * from analisisconversacioncall a 


select * from agent_sessions t 


 SELECT DISTINCT ejecutiveId, sender_id,chat_id
      FROM mensajes 
            
select * from mensajes m 
where m.created_at   > '2026-01-19'
order by m.timestamp_wa desc 
limit 10
      
select * from mensajes m 
where m.conversacionid  is not null
and m.created_at   > '2026-01-19'


select m.timestamp_wa,m.contenido_procesado,
m.type_sender,m.chat_id,
m.sender_id,m.ejecutiveid
from mensajes m 
where m.conversacionid  = '509'
      
      
 SELECT DISTINCT ejecutiveId, sender_id, chat_id
      FROM mensajes 
      WHERE created_at   > '2026-01-19'
      AND created_at   < '2026-01-20'
      
           
select * from mensajes m 
where m.sender_id = '5215551008454'

select * from mensajes m 
where m.chat_id   = '27474939388083'

select * from mensajes m 
where m.chat_id  = '6643704423'


select * from mensajes m
where m.conversacionid is not null
      
      
select * from conversacion c       
where created_at   > '2026-01-19'  


select c.prospectid ,* from analisisconversacion a
left join conversacion c 
on c.id = a.conversacionid 
where c.created_at   > '2026-01-19'      
      
select a.prospectid ,* from analisisconversacioncall a        
where created_at   > '2026-01-19'      

      
      
select * from analisisconversacioncall a 
where a.prospectid  = 'YLlFVDbzSmc9sFJMkvKWcuE3'
      



SELECT DISTINCT ejecutiveId, sender_id , chat_id
      FROM mensajes 
      WHERE 
      --and chat_id = '27474939388083'
        RIGHT(REPLACE(REPLACE(REPLACE(sender_id, '+',''), '521',''), '-',''), 10)
      <> 
      RIGHT(REPLACE(REPLACE(REPLACE(ejecutiveId, '+',''), '521',''), '-',''), 10);

      
      
      
      
      
      
CREATE TABLE analysis_pipeline  (
  id SERIAL PRIMARY KEY,
  numero INTEGER NOT NULL,
  data_to_analyze JSONB,
  data_analyzed JSONB,
  last_analyze JSONB,
  has_previous_analysis boolean default false,
  last_analyze_date TIMESTAMP,
  prospectid VARCHAR(255),
  ejecutiveid VARCHAR(255),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

      


      
      
      
      
      
      
      
      
      
      WITH ActividadUnificada AS (
    -- Parte 1: Conversaciones de WhatsApp
    SELECT 
        c.prospectid, 
        'whatsapp' AS tipo_interaccion,
        a.fecha_conversacion,
        a.id AS analisis_id -- o los campos que necesites de analisisconversacion
    FROM conversacion c
    LEFT JOIN analisisconversacion a ON c.id = a.conversacionid 
    WHERE c.created_at > '2026-01-19'
    UNION ALL
    -- Parte 2: Llamadas
    SELECT 
        prospectid, 
        'llamada' AS tipo_interaccion,
        created_at,
        id AS analisis_id
    FROM analisisconversacioncall a
    WHERE a.created_at > '2026-01-19'
)
SELECT * FROM ActividadUnificada
ORDER BY fecha_conversacion DESC;
      
      
      
      
      
      
      
      
SELECT 
    prospectid,
    MAX(tiene_whats) AS tiene_whats,
    MAX(tiene_llamada) AS tiene_llamada,
    -- Usamos string_agg y convertimos el ID a texto (::text)
    STRING_AGG(DISTINCT id_whats::text, ',') AS ids_whats,
    STRING_AGG(DISTINCT id_llamada::text, ',') AS ids_llamadas
FROM (
    -- Subconsulta de WhatsApp
    SELECT 
        c.prospectid, 
        1 AS tiene_whats, 
        0 AS tiene_llamada,
        c.id AS id_whats,
        NULL AS id_llamada
    FROM conversacion c
    WHERE c.created_at > '2026-01-19'
    UNION ALL
    -- Subconsulta de Llamadas
    SELECT 
        prospectid, 
        0 AS tiene_whats, 
        1 AS tiene_llamada,
        NULL AS id_whats,
        id AS id_llamada
    FROM analisisconversacioncall
    WHERE created_at > '2026-01-19'
) AS universo
GROUP BY prospectid;
      
      
      

SELECT
                prospectid,
                MAX(tiene_whats) AS tiene_whats,
                MAX(tiene_llamada) AS tiene_llamada,
                STRING_AGG(DISTINCT id_whats::text, ',') AS ids_whats,
                STRING_AGG(DISTINCT id_llamada::text, ',') AS ids_llamadas
            FROM (
                -- Subconsulta de WhatsApp
                SELECT
                    c.prospectid,
                    1 AS tiene_whats,
                    0 AS tiene_llamada,
                    c.id AS id_whats,
                    NULL AS id_llamada
                FROM conversacion c
                WHERE c.created_at BETWEEN '2025-12-11T00:00:00-06:00' AND '2025-12-11T23:59:59-06:00'
                UNION ALL
                -- Subconsulta de Llamadas
                SELECT
                    prospectid,
                    0 AS tiene_whats,
                    1 AS tiene_llamada,
                    NULL AS id_whats,
                    id AS id_llamada
                FROM analisisconversacioncall
                WHERE created_at BETWEEN '2025-12-11T00:00:00-06:00' AND '2025-12-11T23:59:59-06:00'
                and prospectid = '9sh63ZrZha1Ze6wWWtUXEdPJ'
            ) AS universo
            GROUP BY prospectid;
      




 SELECT
                prospectid,
                MAX(tiene_whats) AS tiene_whats,
                MAX(tiene_llamada) AS tiene_llamada,
                STRING_AGG(DISTINCT id_whats::text, ',') AS ids_whats,
                STRING_AGG(DISTINCT id_llamada::text, ',') AS ids_llamadas
            FROM (
                -- Subconsulta de WhatsApp (Análisis de Conversación)
                SELECT
                    c.prospectid,
                    1 AS tiene_whats,
                    0 AS tiene_llamada,
                    a.id AS id_whats,
                    NULL AS id_llamada
                FROM analisisconversacion a
                INNER JOIN conversacion c ON c.id = a.conversacionid
                WHERE a.fecha_conversacion BETWEEN '2025-12-11T00:00:00-06:00' AND '2025-12-11T23:59:59-06:00'
                UNION ALL
                -- Subconsulta de Llamadas
                SELECT
                    prospectid,
                    0 AS tiene_whats,
                    1 AS tiene_llamada,
                    NULL AS id_whats,
                    id AS id_llamada
                FROM analisisconversacioncall
                WHERE created_at BETWEEN '2025-12-11T00:00:00-06:00' AND '2025-12-11T23:59:59-06:00'
            ) AS universo
            -- Si quieres filtrar un prospecto específico quita el comentario de abajo:
            -- WHERE prospectid = '9sh63ZrZha1Ze6wWWtUXEdPJ'
            GROUP BY prospectid;
 
 
 
select c.prospectid ,* from analisisconversacion a
left join conversacion c
on c.id = a.conversacionid
where a.fecha_conversacion   > '2025-12-11T00:00:00-06:00' and a.fecha_conversacion < '2025-12-11T23:59:59-06:00' and c.prospectid  = '9sh63ZrZha1Ze6wWWtUXEdPJ'  

      