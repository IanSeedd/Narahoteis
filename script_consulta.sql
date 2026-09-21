USE narahoteis;

-- Aqui estão uma parte da questão 1 e a questão 2

-- Pergunta 1 Faturamento:
SELECT u.id, u.nome, SUM(r.qtd_diarias * tq.valor_diaria) AS faturamento
FROM reservas r
JOIN unidades u ON r.id_unidade = u.id
JOIN tipos_quarto tq ON r.id_quarto = tq.id
WHERE r.status_reserva <> 'Cancelada' -- Canceladas já que No-Show pode entrar parcialmente no faturamento, depende da politica do hotel
GROUP BY u.nome, u.id
ORDER BY faturamento DESC;

-- Pergunta 2 Ocupação:
-- Com No-Show:
SELECT u.id, u.nome, u.num_quartos_total, r.data_checkin, COUNT(r.id) AS quartos_ocupados, ROUND((COUNT(r.id)/u.num_quartos_total) * 100, 2) AS taxa_ocupacao_percent
FROM reservas r
JOIN unidades u ON r.id_unidade = u.id
WHERE r.status_reserva <> 'Cancelada' -- Canceladas já que No-Show pode entrar parcialmente no faturamento, depende da politica do hotel
GROUP BY u.id, u.nome, u.num_quartos_total, r.data_checkin
HAVING quartos_ocupados > u.num_quartos_total
ORDER BY taxa_ocupacao_percent DESC;
-- Sem No-Show
SELECT u.id, u.nome, u.num_quartos_total, r.data_checkin, COUNT(r.id) AS quartos_ocupados, ROUND((COUNT(r.id)/u.num_quartos_total) * 100, 2) AS taxa_ocupacao_percent
FROM reservas r
JOIN unidades u ON r.id_unidade = u.id
WHERE r.status_reserva = 'Confirmada' 
GROUP BY u.id, u.nome, u.num_quartos_total, r.data_checkin
HAVING quartos_ocupados > u.num_quartos_total
ORDER BY taxa_ocupacao_percent DESC;

-- Resumo os valores são iguais então existem sim unidades operando além da capacidade 