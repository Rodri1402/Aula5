# Aula5
CREATE SCHEMA aula;
USE aula;

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    telefone VARCHAR(15),
    endereço VARCHAR(50),
    bairro VARCHAR(20),
    cep VARCHAR(8),
    salario DOUBLE,
    cidade VARCHAR(20)
);
insert into funcionarios values (NULL, 'Maria João', '99070012', 'Av. Gov José Malcher, 2460', 
'São Bras', '66060281', 1500.80, 'Belém');
insert into funcionarios values (NULL, 'Pedro Zamora', '99989988', 'Av. Magalhães Barata, 1360', 
'Nazaré', '66055090', 2300.12, 'Belem');
insert into funcionarios values (NULL, 'Andrea Pinho', '99989988', 'Boaventura da Silva, 678, ap 304', 
'Umarizal', '66075080', 4080.50, 'BELEM');
insert into funcionarios values (NULL, 'Mario Silva', '2223234', 'Cidade Nova IV, 3456', 
'São Bras', '66060281', 1200.80, 'Ananindeua');
insert into funcionarios values (NULL, 'Felipe Almeida', '99980088', 'Av. Roberto Camelier, 2360', 
'Jurunas', '66055090', 9300.72, 'Belem');
insert into funcionarios values (NULL, 'Rafael Bezerra', '99345688', 'Passagem Maxima, 678, ap 304', 
'Marco', '66075080', 4080.50, 'BELEM');
insert into funcionarios values (NULL, 'Katia Santos', '98760012', 'Trav Mauriti, 2460', 
'Marco', '66060281', 700.80, 'Belém');
insert into funcionarios values (NULL, 'Gustavo Pinto', '22389988', 'Passagem Barata, 1360', 
'Cidade Nova IV', '66055090', 2300.12, 'Ananindeua');
insert into funcionarios values (NULL, 'Anderson Marques', '32289988', '40 horas, 678', 
'Coqueiro', '66075080', 8900.50, 'Ananindeua');
insert into funcionarios values (NULL, 'Renato Hudson', '34553234', 'Passagem Tereza, 3456', 
'Cidade Nova V', '66060281', 1450.80, 'Ananindeua');
insert into funcionarios values (NULL, 'Tiago Alves', '78889988', 'Av. Magalhães Barata, 1360', 
'Nazaré', '66055090', 2990.62, 'Belem');
insert into funcionarios values (NULL, 'Mario Antonio', '23489988', 'Boaventura da Silva, 678, ap 304', 
'Umarizal', '66075080', 4080.50, 'BELEM');
insert into funcionarios values (NULL, 'Maria Silva', '32470012', 'Av. Gov José Malcher, 2460', 
'São Bras', '66060281', 1500.80, 'Belém');
insert into funcionarios values (NULL, 'Jean Zorat', '88789988', 'Av. Magalhães Barata, 1360', 
'Nazaré', '66055090', 2823.99, 'Belem');
insert into funcionarios values (NULL, 'Andre Ribeiro', '76589988', 'Boaventura da Silva, 678, ap 304', 
'Umarizal', '66075080', 3567.50, 'BELEM');
insert into funcionarios values (NULL, 'Matheus Carmo', '87893234', 'Cidade Nova IV, 3456', 
'São Bras', '66060281', 1689.90, 'Ananindeua');
insert into funcionarios values (NULL, 'Daniel Dantes', '22989988', 'Av. Magalhães Barata, 1360', 
'Nazaré', '66055090', 2800.12, 'Belem');
insert into funcionarios values (NULL, 'Zumira Castro', '99989988', 'Boaventura da Silva, 678, ap 304', 
'Umarizal', '66075080', 8080.00, 'BELEM');

SELECT nome, telefone, salario
FROM funcionarios;

SELECT nome, telefone, salario
FROM funcionarios
WHERE salario > 3000.00;

SELECT nome, telefone, salario
FROM funcionarios
WHERE salario BETWEEN 2000.00 AND 4000.00;

SELECT nome, telefone, salario
FROM funcionarios
WHERE cidade <> 'Belem';

SELECT nome, telefone, salario
FROM funcionarios
WHERE bairro = 'São Bras' OR salario > 2500.00;

SELECT nome, telefone, salario
FROM funcionarios
WHERE nome LIKE 'M%';

SELECT nome, telefone, salario
FROM funcionarios
WHERE nome LIKE '%Z%';

SELECT DISTINCT bairro
FROM funcionarios;

SELECT *
FROM funcionarios
ORDER BY id DESC
LIMIT 5;

SELECT nome
FROM funcionarios
ORDER BY salario DESC;

SELECT *
FROM funcionarios
WHERE cidade <> 'Belem' OR salario < 3000.00
ORDER BY salario DESC;

SELECT nome, salario
FROM funcionarios
WHERE bairro IN ('São Braz', 'Umarizal', 'Nazaré')
ORDER BY salario DESC;

UPDATE funcionarios
SET bairro = 'São Braz'
WHERE bairro = 'São Bras';

DELETE FROM funcionarios
ORDER BY salario DESC
LIMIT 1;
