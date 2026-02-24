USE RU;
CREATE TABLE aluno(
   id_aluno INT PRIMARY KEY IDENTITY(1,1),
   nome VARCHAR(100) NOT NULL,
   matricula INT NOT NULL UNIQUE,
   tipo VARCHAR(50) NOT NULL
);
CREATE TABLE cartao(
   id_cartao INT PRIMARY KEY,
   id_aluno INT NOT NULL,
   CONSTRAINT FK_cartao_aluno FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);
CREATE TABLE emprestimo(
   id_emprestimo INT PRIMARY KEY IDENTITY(1,1),
   id_aluno INT NOT NULL,
   data_emprestimo DATE NOT NULL,
   est_data_devolucao DATE NOT NULL,
   CONSTRAINT FK_emprestimo_aluno FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);
 CREATE TABLE recarga(
   id_recarga INT PRIMARY KEY IDENTITY(1,1),
   id_cartao INT NOT NULL,
   valor DECIMAL(10,2) NOT NULL CHECK (valor > 0),
   data_recarga DATE NOT NULL,
   CONSTRAINT FK_recarga_cartao 
      FOREIGN KEY (id_cartao) 
      REFERENCES cartao(id_cartao)
);
