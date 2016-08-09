
CREATE TABLE medicamento (
                id_medicamento REAL NOT NULL,
                cv_descricao VARCHAR NOT NULL,
                tp_medicamento VARCHAR NOT NULL,
                CONSTRAINT id_medicamento PRIMARY KEY (id_medicamento)
);


CREATE TABLE repouso (
                id_repouso REAL NOT NULL,
                cv_descricao VARCHAR NOT NULL,
                CONSTRAINT id_repouso PRIMARY KEY (id_repouso)
);


CREATE TABLE hidratacao (
                id_hidratacao REAL NOT NULL,
                cv_descricao VARCHAR NOT NULL,
                CONSTRAINT id_hidratacao PRIMARY KEY (id_hidratacao)
);


CREATE TABLE dieta (
                id_dieta REAL NOT NULL,
                cv_descricao VARCHAR NOT NULL,
                CONSTRAINT id_dieta PRIMARY KEY (id_dieta)
);


CREATE TABLE fisioterapia (
                id_fisioterapia REAL NOT NULL,
                cv_descricao VARCHAR NOT NULL,
                CONSTRAINT id_fisioterapia PRIMARY KEY (id_fisioterapia)
);


CREATE TABLE prescricao (
                id_prescricao REAL NOT NULL,
                nm_paciente VARCHAR NOT NULL,
                nm_medico VARCHAR NOT NULL,
                dt_prescricao DATE NOT NULL,
                CONSTRAINT id_prescricao PRIMARY KEY (id_prescricao)
);


CREATE TABLE prescricao_hidratacao (
                id_prescricao_hidratacao REAL NOT NULL,
                id_prescricao REAL NOT NULL,
                id_hidratacao REAL NOT NULL,
                CONSTRAINT id_prescricao_hidratacao PRIMARY KEY (id_prescricao_hidratacao, id_prescricao, id_hidratacao)
);


CREATE TABLE prescricao_dieta (
                id_prescricao_dieta VARCHAR NOT NULL,
                id_prescricao REAL NOT NULL,
                id_dieta REAL NOT NULL,
                CONSTRAINT id_prescricao_dieta PRIMARY KEY (id_prescricao_dieta, id_prescricao, id_dieta)
);


CREATE TABLE prescricao_medicamento (
                id_prescricao_medicamento REAL NOT NULL,
                id_prescricao REAL NOT NULL,
                id_medicamento REAL NOT NULL,
                CONSTRAINT id_prescricao_medicamento PRIMARY KEY (id_prescricao_medicamento, id_prescricao, id_medicamento)
);


CREATE TABLE prescricao_fisioterapia (
                id_prescricao_fisioterapia REAL NOT NULL,
                id_prescricao REAL NOT NULL,
                id_fisioterapia REAL NOT NULL,
                CONSTRAINT id_prescricao_fisioterapia PRIMARY KEY (id_prescricao_fisioterapia, id_prescricao, id_fisioterapia)
);


CREATE TABLE prescricao_repouso (
                id_prescricao_repouso REAL NOT NULL,
                id_prescricao REAL NOT NULL,
                id_repouso REAL NOT NULL,
                CONSTRAINT id_prescricao_repouso PRIMARY KEY (id_prescricao_repouso, id_prescricao, id_repouso)
);


ALTER TABLE prescricao_medicamento ADD CONSTRAINT medicamento_prescricao_medicamento_fk
FOREIGN KEY (id_medicamento)
REFERENCES medicamento (id_medicamento)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE prescricao_repouso ADD CONSTRAINT repouso_prescricao_repouso_fk
FOREIGN KEY (id_repouso)
REFERENCES repouso (id_repouso)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE prescricao_hidratacao ADD CONSTRAINT hidratacao_prescricao_hidratacao_fk
FOREIGN KEY (id_hidratacao)
REFERENCES hidratacao (id_hidratacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE prescricao_dieta ADD CONSTRAINT dieta_prescricao_dieta_fk
FOREIGN KEY (id_dieta)
REFERENCES dieta (id_dieta)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE prescricao_fisioterapia ADD CONSTRAINT fisioterapia_prescricao_fisioterapia_fk
FOREIGN KEY (id_fisioterapia)
REFERENCES fisioterapia (id_fisioterapia)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE prescricao_repouso ADD CONSTRAINT prescricao_prescricao_repouso_fk
FOREIGN KEY (id_prescricao)
REFERENCES prescricao (id_prescricao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE prescricao_fisioterapia ADD CONSTRAINT prescricao_prescricao_fisioterapia_fk
FOREIGN KEY (id_prescricao)
REFERENCES prescricao (id_prescricao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE prescricao_medicamento ADD CONSTRAINT prescricao_prescricao_medicamento_fk
FOREIGN KEY (id_prescricao)
REFERENCES prescricao (id_prescricao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE prescricao_dieta ADD CONSTRAINT prescricao_prescricao_dieta_fk
FOREIGN KEY (id_prescricao)
REFERENCES prescricao (id_prescricao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE prescricao_hidratacao ADD CONSTRAINT prescricao_prescricao_hidratacao_fk
FOREIGN KEY (id_prescricao)
REFERENCES prescricao (id_prescricao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
