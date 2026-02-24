USE RU;
GO 

DELETE FROM recarga;
DELETE FROM emprestimo;
DELETE FROM cartao;
DELETE FROM aluno;

DBCC CHECKIDENT ('aluno', RESEED, 0);
DBCC CHECKIDENT ('emprestimo', RESEED, 0);
DBCC CHECKIDENT ('recarga', RESEED, 0);

INSERT INTO aluno(nome, matricula, tipo) VALUES
('Alice Rodrigues', 583230, 'não vegano'),
('Thábata Lima', 576593, 'vagano'),
('Arthur Rodrigues', 553498, 'vegano'),
('Luis Henrique', 561276, 'não vegano');

INSERT INTO cartao(id_aluno, id_cartao) VALUES
(1, 464826497),
(2, 390425761),
(3, 983527485),
(4, 730274528);

INSERT INTO emprestimo(id_aluno, data_emprestimo, est_data_devolucao) VALUES
(1, '2025-03-01', '2029-11-17'),
(2, '2023-03-05', '2027-11-20'),
(3, '2023-03-07', '2027-11-19'),
(4, '2024-04-01', '2028-11-15');

INSERT INTO recarga (id_cartao, valor, data_recarga) VALUES 
(464826497, 10.00, '2026-01-10'),
(730274528, 5.50, '2025-11-10'),
(390425761, 15.00, '2026-03-05'),
(983527485, 11.00, '2026-02-24');

