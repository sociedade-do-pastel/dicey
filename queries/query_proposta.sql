SELECT nome, AVG(prazo) AS prazo_entrega,modelo AS modelo_veiculo, COUNT(nome)
AS numero_entrega,  numero_cd
FROM public.entregador AS del
JOIN public.entrega AS ent on ent.num_entregador = del.num_identificacao
JOIN public.veiculo AS vei using(cod_veiculo)
JOIN public.centro_distribuicao_entregador AS ddent ON
del.num_identificacao = ddent.num_entregador
GROUP BY (nome,modelo, numero_cd)
ORDER BY count(nome) DESC LIMIT 3
