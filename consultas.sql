/*Alunos matriculados neste periodo*/
select count(1) 
from matricula 
where periodo = 8 and ano = 2020;

/*Alunos matriculados neste periodo do curso de SI*/
select ta.nome 
from matricula as tm
inner join alunos as ta
	on ta.id = tm.id_aluno
where tm.id_curso = 1
and tm.periodo = 8
and tm.ano = 2020;

/*Professor com o maior salario*/
select tp.nome
from funcao as tl
inner join professores as tp
	on tp.id = tl.id_professor
order by tl.salario desc
limit 1;

/*Professor que administra maior número de aulas*/
select tp.nome,
	   count(tl.id_curso)
from funcao as tl
inner join professores as tp
	on tp.id = tl.id_professor
group by tp.nome
order by count(tl.id_curso) desc
limit 1;

/*Aluno com maior média do curso de SI */
select ta.nome,
	   avg(tn.nota)
from notas as tn
inner join matricula as tm
	on tm.id = tn.id_matricula
    and tm.id_curso = 1
inner join alunos as ta
	on ta.id = tm.id_aluno
group by ta.nome
order by avg(tn.nota) desc
limit 1;