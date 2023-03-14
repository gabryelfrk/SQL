UPDATE s 
SET s.bascalicm = (
	SELECT SUM(r.xbc_icms) FROM rcdpe r 
	WHERE r.xnumero = s.nota
	AND r.xesp = s.esp
	AND r.xserie = s.serie
	AND r.xcodfisca = s.codfisca
)
FROM saida s
WHERE s.diames >= '01-01-2023' AND s.diames <= '31-01-2023'
