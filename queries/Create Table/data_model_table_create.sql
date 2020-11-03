CREATE TABLE public.pacote (
    cod_barras integer NOT NULL,
    num_entrega integer NOT NULL,
    num_cd integer NOT NULL,
    peso real NOT NULL,
    perecivel boolean NOT NULL,
    aviso_recebimento boolean NOT NULL,
    largura real NOT NULL,
    altura real NOT NULL,
    profundidade real NOT NULL,
    PRIMARY KEY (cod_barras)
);

CREATE INDEX ON public.pacote
    (num_entrega);
CREATE INDEX ON public.pacote
    (num_cd);


CREATE TABLE public.entrega (
    num_entrega integer NOT NULL,
    num_cd integer NOT NULL,
    id_pessoa integer NOT NULL,
    prazo timestamp with time zone NOT NULL,
    tipo varchar(100) NOT NULL,
    valor real NOT NULL,
    data_recebimento timestamp without time zone NOT NULL,
    PRIMARY KEY (num_entrega)
);

CREATE INDEX ON public.entrega
    (num_cd);
CREATE INDEX ON public.entrega
    (id_pessoa);


CREATE TABLE public.centro_distribuicao (
    numero integer NOT NULL,
    rua varchar(1000) NOT NULL,
    numero integer NOT NULL,
    bairro varchar(100) NOT NULL,
    cep integer NOT NULL,
    PRIMARY KEY (numero)
);


CREATE TABLE public.entregador (
    num_identificacao integer NOT NULL,
    num_entrega integer NOT NULL,
    cod_veiculo integer NOT NULL,
    cpf_entregador integer NOT NULL,
    PRIMARY KEY (num_identificacao)
);

CREATE INDEX ON public.entregador
    (num_entrega);
CREATE INDEX ON public.entregador
    (cod_veiculo);


CREATE TABLE public.p_fisica (
    cpf integer NOT NULL,
    PRIMARY KEY (cpf)
);


CREATE TABLE public.p_juridica (
    cnpj integer NOT NULL,
    PRIMARY KEY (cnpj)
);


CREATE TABLE public.pessoa (
    id_pessoa integer NOT NULL,
    tipo varchar(10) NOT NULL,
    nome varchar(100) NOT NULL,
    rua varchar(100) NOT NULL,
    numero integer NOT NULL,
    bairro varchar(100) NOT NULL,
    cep integer NOT NULL,
    cpfcnpj integer NOT NULL,
    PRIMARY KEY (id_pessoa)
);


CREATE TABLE public.veiculo (
    cod_veiculo integer NOT NULL,
    ano integer NOT NULL,
    modelo varchar(100) NOT NULL,
    placa varchar(20) NOT NULL,
    peso_suportado real NOT NULL,
    altura real NOT NULL,
    largura real NOT NULL,
    profundidade real NOT NULL,
    altura_carga real NOT NULL,
    largura_carga real NOT NULL,
    profundidade_carga real NOT NULL,
    PRIMARY KEY (cod_veiculo)
);


CREATE TABLE public.carro (
    categoria varchar(100) NOT NULL,
    blindado boolean NOT NULL,
    cod_veiculo integer NOT NULL
);

CREATE INDEX ON public.carro
    (cod_veiculo);


CREATE TABLE public.moto (
    velocidade_max integer NOT NULL,
    cod_veiculo integer NOT NULL
);

CREATE INDEX ON public.moto
    (cod_veiculo);


CREATE TABLE public.caminhao (
    num_eixos integer NOT NULL,
    refrigerado boolean NOT NULL,
    cod_veiculo integer NOT NULL
);

CREATE INDEX ON public.caminhao
    (cod_veiculo);


CREATE TABLE public.centro_distribuicao_pessoa (
    id_pessoa integer NOT NULL,
    numero_cd integer NOT NULL
);

CREATE INDEX ON public.centro_distribuicao_pessoa
    (id_pessoa);
CREATE INDEX ON public.centro_distribuicao_pessoa
    (numero_cd);


CREATE TABLE public.centro_distribuicao_entregador (
    numero_cd integer NOT NULL,
    num_entregador integer NOT NULL
);

CREATE INDEX ON public.centro_distribuicao_entregador
    (numero_cd);
CREATE INDEX ON public.centro_distribuicao_entregador
    (num_entregador);


CREATE TABLE public.habilitacao (
    num_habilitacao integer NOT NULL,
    num_entregador integer NOT NULL,
    tipo varchar(10) NOT NULL,
    num_pontos integer NOT NULL,
    PRIMARY KEY (num_habilitacao)
);

CREATE INDEX ON public.habilitacao
    (num_entregador);


ALTER TABLE public.pacote ADD CONSTRAINT FK_pacote__num_entrega FOREIGN KEY (num_entrega) REFERENCES public.entrega(num_entrega);
ALTER TABLE public.pacote ADD CONSTRAINT FK_pacote__num_cd FOREIGN KEY (num_cd) REFERENCES public.centro_distribuicao(numero);
ALTER TABLE public.entrega ADD CONSTRAINT FK_entrega__num_cd FOREIGN KEY (num_cd) REFERENCES public.centro_distribuicao(numero);
ALTER TABLE public.entrega ADD CONSTRAINT FK_entrega__id_pessoa FOREIGN KEY (id_pessoa) REFERENCES public.pessoa(id_pessoa);
ALTER TABLE public.carro ADD CONSTRAINT FK_carro__cod_veiculo FOREIGN KEY (cod_veiculo) REFERENCES public.veiculo(cod_veiculo);
ALTER TABLE public.moto ADD CONSTRAINT FK_moto__cod_veiculo FOREIGN KEY (cod_veiculo) REFERENCES public.veiculo(cod_veiculo);
ALTER TABLE public.caminhao ADD CONSTRAINT FK_caminhao__cod_veiculo FOREIGN KEY (cod_veiculo) REFERENCES public.veiculo(cod_veiculo);
ALTER TABLE public.centro_distribuicao_pessoa ADD CONSTRAINT FK_centro_distribuicao_pessoa__id_pessoa FOREIGN KEY (id_pessoa) REFERENCES public.pessoa(id_pessoa);
ALTER TABLE public.centro_distribuicao_pessoa ADD CONSTRAINT FK_centro_distribuicao_pessoa__numero_cd FOREIGN KEY (numero_cd) REFERENCES public.centro_distribuicao(numero);
ALTER TABLE public.centro_distribuicao_entregador ADD CONSTRAINT FK_centro_distribuicao_entregador__numero_cd FOREIGN KEY (numero_cd) REFERENCES public.centro_distribuicao(numero);
ALTER TABLE public.centro_distribuicao_entregador ADD CONSTRAINT FK_centro_distribuicao_entregador__num_entregador FOREIGN KEY (num_entregador) REFERENCES public.entregador(num_identificacao);
ALTER TABLE public.habilitacao ADD CONSTRAINT FK_habilitacao__num_entregador FOREIGN KEY (num_entregador) REFERENCES public.entregador(num_identificacao);