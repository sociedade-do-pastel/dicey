INSERT INTO public.Centro_Distribuicao VALUES
(1, 'Padre Arlindo Vieira', 500, 'Jardim da Saúde', 04182300),
(2, 'Cláudia', 153, 'Vila Matilde', 05002261),
(3, 'Armando Fonseca', 8600, 'Tucuruvi', 05290400);

INSERT INTO public.Pessoa VALUES
(1, 'pf','Carlinhos','Marechal', 54, 'Chácara Klabin', 04952874, 59748615587),
(2, 'pf','Arnaldo','Galvão Bueno', 23, 'Liberdade', 04198578, 23915632226),
(3, 'pf','Jozicleide','Domingos de Moraes', 71, 'Paulicéia', 48759214, 44456209812),
(4, 'pj','FEI','Av. Castelo Branco', 3972, 'Assunção', 09850901, 61023156000182),
(5, 'pj','Mackenzie','Maria Antônia', 163, ' Vila Buarque',  01222010,  60967551000908),
(6, 'pf', 'Ana Paula', 'Paes de Barros', 456, 'Vila Silvestre', 35947171, 23569618227),
(7, 'pf', 'João Carlos', 'Paulo Lacerda', 98, 'Vila Mariana', 15513689, 13955400040),
(8, 'pj', 'Corinthians', 'Av. Itaquera', 1850, 'Itaquera', 49920865, 37494015632386);

INSERT INTO public.Centro_Distribuicao_Pessoa VALUES
(3, 2),
(4, 3),
(5, 1),
(8, 2),
(3, 1),
(8, 3);

INSERT INTO public.Veiculo VALUES
(1454, 2017, 'Ninja', 'ABC1234', 40, 1.115, 0.715, 2.085, 0.45, 0.45, 0.54),
(7894, 2020, 'Palio', 'DEF5678', 900, 1.433, 1.634, 2.827, 0.5, 1.4, 1),
(1847, 2015, 'Fiorino', 'UEF1785', 4000, 1.7, 0.9, 2.6, 0.7, 1.5, 1.1),
(7541, 2012, 'Scania S100', 'IUP8000', 30000, 2.35, 2, 2.5, 2.10, 2, 1.6),
(5857, 2013, 'Gol G1', 'GTK0000', 854, 1.313, 1.235, 2.127, 0.47, 1.21, 0.95),
(6436, 2017, '(Bon) Voyage', 'AMD8000', 798, 1.5, 0.857, 2.11, 0.465, 1.475, 0.894),
(6512, 2012, 'Mercedes 1620', 'SQL1000', 3400, 1.313, 1.235, 2.127, 0.47, 1.21, 0.95),
(0273, 2019, 'BMW 800', 'UFO8524', 62, 1.013, 0.494, 1.9, 0.49, 0.51, 0.61);

INSERT INTO public.Carro VALUES
(7894, 'hatch', 'f'),
(1847, 'pickup', 't'),
(5857, 'hatch', 'f'),
(6436, 'sedan', 'f');

INSERT INTO public.Moto VALUES
(1454, 220),
(0273, 200);

INSERT INTO public.Caminhao VALUES
(7541, 5, 't'),
(6512, 5, 'f');

INSERT INTO public.Entregador VALUES
(1, 1454, 35912200733, 'Joelson'),
(2, 7894, 93999932999, 'João Afonso'),
(3, 5857, 82101282828, 'Uelinton'),
(4, 6512, 15641874654, 'Godofredo'),
(5, 6436, 15386667108, 'Washington'),
(6, 0273, 75991500341, 'Vanda'),
(7, 1847, 95274383382, 'Cosmo'),
(8, 7541, 62744905921, 'Jorjana');

INSERT INTO public.Habilitacao VALUES
(48486, 1, 'A', 21), 
(45876, 2, 'B', 2),
(89741, 3, 'AB', 15),
(12348, 4, 'E', 0),
(78641, 5, 'B', 13), 
(39849, 6, 'A', 4),
(84523, 7, 'B', 8),
(39721, 8, 'D', 22);

INSERT INTO public.Centro_Distribuicao_Entregador VALUES
(1, 1),
(1, 2),
(1, 5),
(2, 3),
(2, 6),
(2, 7),
(3, 4),
(2, 8);

INSERT INTO public.Entrega VALUES
(1, 3, 2, 1, 14, 'padrão', 42.99, '2020-10-27'),
(2, 1, 5, 3, 5, 'expressa', 65.50, '2020-11-01'),
(3, 2, 1, 2, 30, 'agendada', 40.00, default),
(4, 1, 2, 3, 10, 'padrão', 19.99, '2020-10-19'),
(5, 2, 8, 5, 20, 'expressa', 20.33, '2020-10-25'),
(6, 3, 7, 5, 48, 'agendada', 189.35, '2020-06-30'),
(7, 3, 6, 4, 95, 'agendada', 83.76, '2020-04-12'),
(8, 1, 2, 6, 7, 'padrão', 37.08, default),
(9, 2, 7, 4, 8, 'expressa', 13.50, '2020-11-25'),
(10, 3, 5, 7, 12, 'padrão', 22.90, '2020-11-30'),
(11, 3, 4, 5, 25, 'padrão', 14.50, '2020-12-05'),
(12, 1, 3, 3, 77, 'agendada', 77.00, '2020-12-30'),
(13, 2, 8, 1, 40, 'agendada', 52.80, default);

INSERT INTO public.Pacote VALUES
(18913, 1, 3, 82, 'f', 't', 0.40, 0.70, 1.5),
(48947, 2, 2, 5, 'f', 'f', 0.2, 0.3, 0.4),
(78754, 3, 2, 490, 'f', 't', 1.5, 1.2, 2.0),
(84842, 3, 2, 250, 'f', 't', 1.1, 1.05, 0.6),
(15468, 4, 1, 1, 't', 't', 0.1, 0.05, 0.1),
(94942, 5, 3, 17, 'f', 'f', 1.59, 1.12, 2),
(94272, 7, 1, 640, 't', 't', 2.64, 1.57, 1.87),
(36604, 8, 3, 82, 't', 't', 0.8, 1, 1.46),
(55321, 6, 2, 9, 't', 't', 1.65, 2, 2.65),
(29010, 5, 2, 31, 'f', 'f', 1.12, 1.67, 0.9),
(50448, 8, 1, 34, 'f', 'f', 0.78, 0.5, 1.17),
(70280, 9, 1, 1, 't', 't', 0.1, 0.05, 0.1),
(51922, 10, 3, 17, 'f', 'f', 1.59, 1.12, 2),
(03090, 11, 1, 640, 't', 't', 2.64, 1.57, 1.87),
(21556, 12, 3, 82, 't', 't', 0.8, 1, 1.46),
(77654, 13, 2, 9, 't', 't', 1.65, 2, 2.65);
