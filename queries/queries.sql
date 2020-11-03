INSERT INTO public.Pessoa VALUES
(1,'pf','Carlinhos','Marechal', 54, 'Chácara Klabin', 04952874, 59748615587),
(2,'pf','Arnaldo','Galvão Bueno', 23, 'Liberdade', 04198578, 23915632226),
(3,'pf','Jozicleide','Domingos de Moraes', 71, 'Paulicéia', 48759214, 44456209812),
(4,'pj','FEI','Av. Castelo Branco', 3972, 'Assunção', 09850901, 61023156000182),
(5,'pj','Mackenzie','Maria Antônia', 163, ' Vila Buarque',  01222010,  60967551000908);

INSERT INTO public.Centro_Distribuicao VALUES
(1, 'Padre Arlindo Vieira', 500, 'Jardim da Saúde', 04182300),
(2, 'Cláudia', 153, 'Vila Matilde', 05002261),
(3, 'Armando Fonseca', 8600, 'Tucuruvi', 05290400);

INSERT INTO public.Centro_Distribuicao_Pessoa VALUES
(3, 2),
(4, 3),
(5, 1);

INSERT INTO public.Entrega VALUES
(1, 3, 2, 14, 'padrão', 42.99, '2020-10-27'),
(2, 1, 5, 5, 'expressa', 65.50, '2020-11-01'),
(3, 2, 1, 30, 'agendada', 40.00, NULL),
(4, 1, 2, 10, 'padrão', 19.99, '2020-10-19');

INSERT INTO public.Pacote VALUES
(18913, 1, 3, 82, 'f', 't', 0.40, 0.70, 1.5),
(48947, 2, 2, 5, 'f', 'f', 0.2, 0.3, 0.4),
(78754, 3, 2, 490, 'f', 't', 1.5, 1.2, 2.0),
(84842, 3, 2, 250, 'f', 't', 1.1, 1.05, 0.6),
(15468, 4, 1, 1, 't', 't', 0.1, 0.05, 0.1);

INSERT INTO public.Entregador VALUES
(1, 2, 777777, 35912200733),
(2, 4, 203290, 93999932999),
(3, 1, 322930, 82101282828),
(4, 3, 456456, 15641874654);

INSERT INTO public.Centro_Distribuicao_Entregador VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3);

INSERT INTO public.Habilitacao VALUES
(1454, 1, 'A', 21), 
(7894, 2, 'B', 2),
(1847, 3, 'AB', 15),
(7541, 4, 'E', 0);

INSERT INTO public.Veiculo VALUES
(1454, 2017, 'Ninja', 'ABC1234', 40, 1.115, 0.715, 2.085, 0.45, 0.45, 0.54),
(7894, 2020, 'Palio', 'DEF5678', 900, 1.433, 1.634, 2.827, 0.5, 1.4, 1),
(1847, 2015, 'Fiorino', 'UEF1785', 4000, 1.7, 0.9, 2.6, 0.7, 1.5, 1.1),
(7541, 2012, 'Scania S100', 'IUP8000', 30000, 2.35, 2, 2.5, 2.10, 2, 1.6);

INSERT INTO public.Carro VALUES
('hatch', 'f', 7894),
('pickup', 't', 1847);

INSERT INTO public.Moto VALUES
(220, 1454);

INSERT INTO public.Caminhao VALUES
(5, 't', 7541);
