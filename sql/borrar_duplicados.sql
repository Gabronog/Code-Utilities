DELETE A
    FROM (TABLA) A
        INNER JOIN (SELECT
                        B.(CAMPOS),ROW_NUMBER() OVER(PARTITION BY (B.CAMPOS) ORDER BY (B.CAMPOS),(B.id)) AS RowRank
                        FROM (TABLE) B
                            INNER JOIN (SELECT
                                            (CAMPOS), COUNT(*) AS CountOf
                                            FROM (Table)
                                            GROUP BY (Campos)
                                            HAVING COUNT(*)>1
                                        ) dt ON B.(CAMPO)=dt.(CAMPO) AND B.(CAMPO)=dt.(CAMPO)...
                   ) C ON A.id=C.id
        WHERE dt2.RowRank!=1
SELECT * FROM (TABLE)



#-------------------------------------------------------------
# Ejemplo
DELETE A 
	FROM ticketing_ticketgroup A 
		INNER JOIN (SELECT 
			B.ticket_id_id,B.group_id_id,cdate,ROW_NUMBER() OVER(PARTITION BY B.ticket_id_id,B.group_id_id,cdate ORDER BY B.ticket_id_id,B.group_id_id,cdate,B.id) AS RowRank
			FROM ticketing_ticketgroup B                             
			INNER JOIN (SELECT                                             
				ticket_id_id,group_id_id,cdate, COUNT(*) AS CountOf                                             
				FROM ticketing_ticketgroup                                             
				GROUP BY ticket_id_id,group_id_id,cdate)                                             
				HAVING COUNT(*)>1
				) dt ON B.group_id_id=dt.group_id_id AND B.ticket_id_id=dt.ticket_id_id AND B.cdate=dt.cdate                    
		) C ON A.id=C.id         WHERE dt2.RowRank!=1;
SELECT * FROM (ticketing_ticketgroup)
