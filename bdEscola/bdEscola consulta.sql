USE bdEscola

SELECT nomeAluno AS 'Nome Aluno', rgAluno AS 'RG', dataNascimentoAluno AS 'Data de Nascimento' FROM tbAluno​
WHERE naturalidadeAluno LIKE '%SP%'

SELECT nomeAluno AS 'Nome Aluno', rgAluno AS 'RG' FROM tbAluno​
WHERE nomeAluno LIKE 'P%'

SELECT nomeCurso AS 'Cursos' FROM tbCurso
WHERE cargahorariaCurso >= 2000

SELECT nomeAluno AS 'Nome Aluno', rgAluno AS 'RG' FROM tbAluno​
WHERE nomeAluno LIKE '%Silva%'

SELECT nomeAluno AS 'Nome Aluno', dataNascimentoAluno AS 'Data de nascimento' FROM tbAluno​
WHERE MONTH (dataNascimentoAluno) = 03

SELECT codAluno AS 'Código Aluno', dataMatricula AS 'Data da Matricula' FROM tbMatricula
WHERE MONTH (dataMatricula) = 05

SELECT codAluno AS 'Código do Aluno'  FROM tbMatricula
WHERE codTurma = 1

SELECT codAluno AS 'Código do Aluno'  FROM tbMatricula
WHERE codTurma = 2

SELECT nomeAluno AS 'Nome do Aluno', dataNascimentoAluno AS 'Data de nascimento', rgAluno AS 'RG do Aluno', naturalidadeAluno AS 'Naturalidade do Aluno' FROM tbAluno

SELECT nomeTurma AS 'Nome Turma', codCurso AS 'Código do Curso', horarioTurma AS 'Horario turma' FROM tbTurma


