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
where m.sender_id = '524521708789'


select * from mensajes m 
where m.chat_id  = '27474939388083'


select * from mensajes m
where m.conversacionid is not null


      
select * from analisisconversacioncall c       
where created_at   > '2026-01-19'  




select * from analisisconversacion a        
where created_at   > '2026-01-19'      
order by fecha_conversacion asc
      
select a.recorded_at,a.transcription,* from analisisconversacioncall a        
where created_at   > '2026-01-19'      

      
      
select * from analisisconversacioncall a 
where a.prospectid  = 'YLlFVDbzSmc9sFJMkvKWcuE3'
      
      
      
select	a.id,a.data_to_analyze,
a.data_analyzed,a.last_analyze 
,a.last_analyze_date  from analysis_pipeline a
order by a.last_analyze_date asc


      
DROP TABLE IF EXISTS analysis_pipeline;
2025-12-11
2025-12-12
2025-12-15
2025-12-17
2025-12-19
2026-01-07
2026-01-08
2026-01-09
2026-01-12
2026-01-20
2026-01-21
2026-01-22
2026-01-23
2026-01-28
      
      alter table analysis_pipeline
add column score integer default 0

alter table analysis_pipeline
add column probability_of_close integer default 0
      
      
select * from conversacion c       
order by created_at desc  

select * from analisisconversacion a       
order by a.created_at desc

select * from analisisconversacioncall  a 
order by a.created_at desc
      
      CREATE TABLE analysis_pipeline  (
  id SERIAL PRIMARY KEY,
  data_to_analyze JSONB,
  phone VARCHAR(255),
  data_analyzed JSONB,
  last_analyze JSONB,
  has_previous_analysis boolean default false,
  last_analyze_date TIMESTAMP,
  prospectid VARCHAR(255),
  ejecutiveid VARCHAR(255),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      