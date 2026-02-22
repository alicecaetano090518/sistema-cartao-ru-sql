--listar nome, matricula, numero do cartão e tipo
SELECT a.nome, a.matricula, c.id_cartao, a.tipo
FROM aluno a
JOIN cartao c ON a.id_aluno = c.id_aluno;