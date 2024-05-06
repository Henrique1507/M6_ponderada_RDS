SELECT 
    EXTRACT(MONTH FROM r.data_rota) AS mes,
    r.id_veiculo,
    COUNT(DISTINCT p.id_paciente) AS pacientes_transportados,
    COUNT(DISTINCT r.id_rota) AS rotas_realizadas,
    ROUND(COUNT(DISTINCT p.id_paciente) / COUNT(DISTINCT r.id_rota), 2) AS media_pacientes_por_rota
FROM 
    PedsTransporte pt
JOIN 
    RotaTransp r ON pt.id_pedido = r.id_pedido
JOIN 
    Pacientsz p ON pt.id_paciente = p.id_paciente
WHERE 
    pt.status_pedido = 'Concluído' -- Assumindo que o status do pedido concluído é 'Concluído'
GROUP BY 
    mes, r.id_veiculo
ORDER BY 
    mes, r.id_veiculo;
