UPDATE s 
SET s.bascalicm = (
	SELECT SUM(r.xbc_icms) FROM rcdpe r 
	WHERE r.xnumero = s.nota
	AND s.esp = r.xesp 
	AND s.serie = r.xserie 
	AND s.codfisca = r.xcodfisca 
)
FROM saida s
WHERE s.diames >= '01-01-2023' AND s.diames <= '31-01-2023'