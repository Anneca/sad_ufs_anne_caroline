
CREATE TABLE dim_disciplina (
                id_disciplina INTEGER NOT NULL,
                nome_disciplina VARCHAR NOT NULL,
                CONSTRAINT dim_disciplina_pk PRIMARY KEY (id_disciplina)
);


CREATE TABLE dim_horario (
                id_horario INTEGER NOT NULL,
                descricao_horario VARCHAR NOT NULL,
                CONSTRAINT dim_horario_pk PRIMARY KEY (id_horario)
);


CREATE TABLE dim_aluno (
                id_aluno INTEGER NOT NULL,
                nome_aluno VARCHAR NOT NULL,
                CONSTRAINT id_aluno_pk PRIMARY KEY (id_aluno)
);


CREATE TABLE dim_professor (
                id_professor INTEGER NOT NULL,
                nome_professor VARCHAR NOT NULL,
                CONSTRAINT dim_professor_pk PRIMARY KEY (id_professor)
);


CREATE TABLE dim_local (
                id_local INTEGER NOT NULL,
                nome_local VARCHAR NOT NULL,
                CONSTRAINT dim_local_pk PRIMARY KEY (id_local)
);


CREATE TABLE fato_aula (
                id_aluno INTEGER NOT NULL,
                id_local INTEGER NOT NULL,
                id_disciplina INTEGER NOT NULL,
                id_professor INTEGER NOT NULL,
                id_horario INTEGER NOT NULL,
                CONSTRAINT fato_aula_pk PRIMARY KEY (id_aluno, id_local, id_disciplina, id_professor, id_horario)
);


ALTER TABLE fato_aula ADD CONSTRAINT dim_disciplina_fato_aula_fk
FOREIGN KEY (id_disciplina)
REFERENCES dim_disciplina (id_disciplina)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE fato_aula ADD CONSTRAINT dim_horario_fato_aula_fk
FOREIGN KEY (id_horario)
REFERENCES dim_horario (id_horario)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE fato_aula ADD CONSTRAINT dim_aluno_fato_aula_fk
FOREIGN KEY (id_aluno)
REFERENCES dim_aluno (id_aluno)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE fato_aula ADD CONSTRAINT dim_professor_fato_aula_fk
FOREIGN KEY (id_professor)
REFERENCES dim_professor (id_professor)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE fato_aula ADD CONSTRAINT dim_local_fato_aula_fk
FOREIGN KEY (id_local)
REFERENCES dim_local (id_local)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
