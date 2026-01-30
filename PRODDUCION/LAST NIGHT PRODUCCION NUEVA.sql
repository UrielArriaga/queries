select * from conversations c 

SELECT
  indexname,
  indexdef
FROM pg_indexes
WHERE tablename = 'conversations';

select * from categories c 
order by c."name" asc

CREATE UNIQUE INDEX idx_conversations_unique ON public.conversations USING btree ("ejecutiveId", context_type, context_id, channel)


select e.email,e.id,e.phone,t."token"    from tokens t 
left join ejecutives e 
on e.id = t."ejecutiveId" 
where t.platform = 'android'


select c."createdAt" ,* from callhistoryraws c 
order by c."createdAt" desc


select * from campaingproductsgoals c 

select * from limenkacampaings l 

select * from limenkacampaingsproducts l 

select * from specialties c 
order by c."name" asc

select * from ejecutives e 
where e.phone  = '5581357569'


select * from prospects p
where p.phone  = '5662325580'

select * from scoring_states ss 


select * from conversion_analysis_state_executives t 


select * from orders o where o.folio  = 'FELMDIC257005'


select e.email,p.* from prospects p
left join ejecutives e 
on e.id = p."ejecutiveId" 
where p.phone  = '2331346982'

select * from scoring_states ss 
where ss."prospectId"  = 'g2TtRlAykkL9tMuErDvvGUNC'


select c.call_datetime,c.phone  from callhistoryraws c 
where c."ejecutiveId"  = 'rUQY9T8gzDnXr7PMKRryUiYU'
and c.call_datetime >  '2026-01-20 11:29:17.000 -0600'
and c.phone = '5587975799'
order by c."call_datetime" asc


select * from specialties s 

select p."lastTrackingcreatedAt" ,* from prospects p

select * from clienttypes c 

select p."ejecutiveId" ,* from prospects p 
where p.phone = '2223109658'

select * from scoring_states ss 
where ss."createdAt"   > '2026-01-18'


SELECT
    indexname AS nombre_indice,
    indexdef AS definicion
FROM
    pg_indexes
WHERE
    schemaname = 'public' -- O tu esquema si es diferente
    AND tablename = 'callhistoryraws';


--vQ12WqVzcXiBAJxat9hk4el8
select * from prospects p
where p.phone  = '5551008454'
--4922427602
--5551008454 

select * from prospects p
where p.email  = 'Etorrescamarillo215@gmail.com'

delete from callhistoryraws 


SELECT e.username,c.call_datetime,c.phone,c.cached_name,c.duration_seconds   FROM "callhistoryraws" c
left join ejecutives e 
on e.id = c."ejecutiveId" 
where c."createdAt"  > '2026-01-22'
and c.call_datetime  < '2026-01-29 16:59:56.000 -0600'
and e.id = '67olUrrlSoOPNTgPeRvPAUZI'
order by c.call_datetime desc



select * from callhistoryraws c 
where c.prospectphone  = '5551008454'



SELECT count(1) FROM "callhistoryraws" 


select e.email,e.phone,g."name"  from ejecutives e 
left join "groups" g 
on g.id = e."groupId" 
where g."name"  = 'helse medical'



WHERE "call_datetime" BETWEEN '2026-01-21 17:36:32 +00' AND '2026-01-21 17:38:32 +00';




select c.call_datetime,c.phone,c."ejecutiveId",c."ejecutiveId",* from callhistoryraws c 
where c.phone  = '9994451595'



SELECT "id", "phone", "call_type", "call_type_label", "duration_seconds", "call_timestamp", "call_datetime", "cached_name", "raw_source", "ejecutivephone", "prospectphone", "createdAt", "updatedAt", "ejecutiveId" FROM "callhistoryraws" AS "callhistoryraw" WHERE "callhistoryraw"."ejecutivephone" = '5581054477' AND "callhistoryraw"."call_datetime" BETWEEN '2026-01-21 16:37:32.000 +00:00' AND '2026-01-21 16:38:32.000 +00:00';






select e."password",e.email,e.id from ejecutives e 
where e.email  = 'urielarriaga.1998@limenka360.com'
or e.email  = 'barbara.rodriguez@meisonmedical.com'
or e.email  = 'christian.hernandez@helsemedical.com'
or e.email  = 'yuridia.ochoa@meisonmedical.com'
or e.email  = 'veronica.hidalgo@lifemedic.com.mx'



select * from scoring_states ss 

UPDATE scoring_states
SET data_x =
$$
{
  "interaccion": {
    "ejecutivo": "Verónica Hidalgo",
    "cliente": "Dr. Benjamín Altamirano",
    "tipo": "Seguimiento",
    "fecha_analisis": "2026-01-25"
  },
  "calificacion": {
    "score": 60,
    "semaforo": "Amarillo",
    "desglose": {
      "presencia": 18,
      "identificacion": 15,
      "calidad": 10,
      "momentum": 12,
      "cierre": 5
    }
  },
  "diagnostico_comercial": {
    "resumen": "Seguimiento por solicitud antigua de electrocardiógrafo sin necesidad inmediata detectada.",
    "metodologia_bant": {
      "budget": "No mencionado",
      "authority": "No mencionado",
      "need": "No hay necesidad actual identificada.",
      "timeline": "No aplica"
    },
    "objeciones": [
      "No recuerda solicitud previa",
      "Sin necesidades actuales"
    ]
  },
  "estrategia_post_llamada": {
    "proximo_paso": "Enviar mensaje con datos de contacto y catálogo actualizado.",
    "mejoras_clave": [
      "Indagar historial de solicitudes",
      "Preguntas de descubrimiento sobre consultorio",
      "Venta de valor clínico vs catálogo"
    ]
  }
}
$$::jsonb
WHERE id = '6ukYaUZSIZrXY9Nv2QNw8pUq';


select * from callhistoryraws c 
where c.phone  = '4521708789'

select * from orders o 
where o.folio = 'JECENE264002'

      
SELECT p.*
      FROM prospects p
      LEFT JOIN ejecutives e ON e.id = p."ejecutiveId"
      WHERE 
        RIGHT(REPLACE(REPLACE(REPLACE(e.phone, '+',''), '521',''), '-',''), 10)
          = RIGHT(REPLACE(REPLACE(REPLACE('5215581357569', '+',''), '521',''), '-',''), 10)
      AND
        RIGHT(REPLACE(REPLACE(REPLACE(p.phone, '+',''), '521',''), '-',''), 10)
          = RIGHT(REPLACE(REPLACE(REPLACE('524521708789', '+',''), '521',''), '-',''), 10)      
      
      
      
      
      

SELECT p.*
FROM prospects p
LEFT JOIN ejecutives e ON e.id = p."ejecutiveId"
WHERE
  RIGHT(
    REGEXP_REPLACE(e.phone, '[^0-9]', '', 'g'),
    10
  ) = RIGHT(
    REGEXP_REPLACE('5215581357569', '[^0-9]', '', 'g'),
    10
  )
AND
  RIGHT(
    REGEXP_REPLACE(p.phone, '[^0-9]', '', 'g'),
    10
  ) = RIGHT(
    REGEXP_REPLACE('524521708789', '[^0-9]', '', 'g'),
    10
  );








