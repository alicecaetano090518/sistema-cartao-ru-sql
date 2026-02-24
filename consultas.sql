--listar nome, matricula, numero do cartão e tipo
SELECT a.nome, a.matricula, c.id_cartao, a.tipo
FROM aluno a
JOIN cartao c ON a.id_aluno = c.id_aluno;

-- Listar alunos com seus cartões
SELECT a.nome, a.matricula, c.id_cartao
FROM aluno a
JOIN cartao c ON a.id_aluno = c.id_aluno;


-- Ver quais alunos ainda não têm cartão
SELECT a.nome
FROM aluno a
LEFT JOIN cartao c ON a.id_aluno = c.id_aluno
WHERE c.id_cartao IS NULL;


-- Mostrar todos os empréstimos feitos
SELECT a.nome, e.data_emprestimo, e.est_data_devolucao
FROM emprestimo e
JOIN aluno a ON e.id_aluno = a.id_aluno;


-- Calcular o saldo total de cada cartão
SELECT c.id_cartao, SUM(r.valor) AS saldo
FROM cartao c
JOIN recarga r ON c.id_cartao = r.id_cartao
GROUP BY c.id_cartao;


