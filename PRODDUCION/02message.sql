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




select a.resumejson,* from analisisconversacion a        
where created_at   > '2026-01-19'      
      
select * from analisisconversacioncall a        
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

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      