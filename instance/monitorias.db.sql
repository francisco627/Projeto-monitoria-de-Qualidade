BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "alembic_version" (
	"version_num"	VARCHAR(32) NOT NULL,
	CONSTRAINT "alembic_version_pkc" PRIMARY KEY("version_num")
);
CREATE TABLE IF NOT EXISTS "monitoria" (
	"id"	INTEGER NOT NULL,
	"nome_analista"	VARCHAR(100) NOT NULL,
	"matricula"	VARCHAR(100) NOT NULL,
	"id_atendimento"	VARCHAR(100) NOT NULL,
	"nota"	INTEGER NOT NULL,
	"status"	VARCHAR(20) NOT NULL,
	"descritivo"	TEXT,
	"arquivo_pdf"	VARCHAR(200),
	"gravacao"	VARCHAR(200),
	"penalidades"	TEXT,
	"data_monitoria"	DATETIME,
	"usuario_id"	INTEGER NOT NULL,
	"assinatura"	VARCHAR(100),
	"data_assinatura"	DATETIME,
	PRIMARY KEY("id"),
	FOREIGN KEY("usuario_id") REFERENCES "usuario"("id")
);
CREATE TABLE IF NOT EXISTS "usuario" (
	"id"	INTEGER NOT NULL,
	"email"	VARCHAR(100) NOT NULL,
	"senha"	VARCHAR(200) NOT NULL,
	"nome"	VARCHAR(100) NOT NULL,
	"grupo"	VARCHAR(20) NOT NULL,
	"matricula"	VARCHAR(100),
	UNIQUE("email"),
	PRIMARY KEY("id"),
	UNIQUE("matricula")
);
INSERT INTO "alembic_version" VALUES ('1af1186c9391');
INSERT INTO "monitoria" VALUES (1,'Francisco','10','1000',80,'aplicada','teste em loco','Atendimento_FIVENET2024460567 (3) (3).pdf','8993afa0-7ac5-466d-9957-c1d80d12c0aa~2024_10_30_08_02_38~11951981841~7002_1730286158476152_i (1) (1) (1).mp3','ouviu_demanda, demonstrou_empatia','2024-10-31 16:35:40.896576',1,NULL,NULL);
INSERT INTO "monitoria" VALUES (2,'Vinycius Galdino','30','02',80,'aplicada','testet','Atendimento_FIVENET2024460567 (3) (2) (4).pdf','8993afa0-7ac5-466d-9957-c1d80d12c0aa~2024_10_30_08_02_38~11951981841~7002_1730286158476152_i (1) (1).mp3','ouviu_demanda, demonstrou_empatia','2024-10-31 16:39:28.142620',1,NULL,NULL);
INSERT INTO "monitoria" VALUES (3,'Vinycius Galdino','30','100',80,'aplicada','ggggggggggggg',NULL,NULL,'ouviu_demanda, demonstrou_empatia','2024-10-31 17:25:24.966413',1,NULL,NULL);
INSERT INTO "monitoria" VALUES (4,'Vinycius Galdino','30','1000',75,'aplicada','testetete',NULL,NULL,'atendeu_prontidao, ouviu_demanda','2024-11-01 09:16:50.940387',1,NULL,NULL);
INSERT INTO "monitoria" VALUES (5,'Vinycius Galdino','31','12',80,'aplicada','teste test  ',NULL,NULL,'ouviu_demanda, demonstrou_empatia','2024-11-01 10:26:07.209969',1,NULL,NULL);
INSERT INTO "monitoria" VALUES (6,'Vinycius Galdino','31','5555',80,'aplicada','testete','Atendimento_FIVENET2024460567 (3) (3).pdf','8993afa0-7ac5-466d-9957-c1d80d12c0aa~2024_10_30_08_02_38~11951981841~7002_1730286158476152_i (1) (1) (1).mp3','ouviu_demanda, demonstrou_empatia','2024-11-01 11:08:06.129888',1,'31','2024-11-01 11:25:07.491768');
INSERT INTO "monitoria" VALUES (7,'Vinycius Galdino','31','5522',75,'aplicada','teste ',NULL,NULL,'atendeu_prontidao, ouviu_demanda','2024-11-01 11:45:04.377533',1,'31','2024-11-01 11:46:40.961590');
INSERT INTO "monitoria" VALUES (8,'Vinycius Galdino','31','100',65,'aplicada','teste tests ','Atendimento_FIVENET2024460567 (3) (3) (1).pdf','8993afa0-7ac5-466d-9957-c1d80d12c0aa~2024_10_30_08_02_38~11951981841~7002_1730286158476152_i (1) (1) (1).mp3','ouviu_demanda, demonstrou_empatia, realizou_sondagem','2024-11-01 12:17:43.608850',1,'31','2024-11-01 12:18:33.740133');
INSERT INTO "monitoria" VALUES (9,'Vinycius Galdino','31','0000000',75,'aplicada','Teste teste testet','Atendimento_FIVENET2024460567 (3) (2) (4) (1).pdf','8993afa0-7ac5-466d-9957-c1d80d12c0aa~2024_10_30_08_02_38~11951981841~7002_1730286158476152_i (1) (1) (1) (1).mp3','demonstrou_empatia, realizou_sondagem','2024-11-01 15:21:16.688004',1,'31','2024-11-01 15:25:39.054556');
INSERT INTO "monitoria" VALUES (10,'Rosangela Silva','20','1000',75,'pendente','testete',NULL,NULL,'atendeu_prontidao, ouviu_demanda','2024-11-02 09:50:41.340466',1,NULL,NULL);
INSERT INTO "usuario" VALUES (1,'adm@fivenet.com.br','scrypt:32768:8:1$VPIQalaPqshQuCgz$784685a20bdb4a085cd07df728aab7aff4b27cabfb6d5c513ea3debb850a3a90e72b9bf5331a6be06c18282610bae2c181a15060eda8694eb85ebc3b9233c304','Francisco','administrador','50');
INSERT INTO "usuario" VALUES (2,'rosangela@fivenet.com.br','scrypt:32768:8:1$2JMdzE8ZLArOh644$55d4859c805b7b59ebbd22bcc30f82ca476ad68f2889a17371c3154e9368f37447cad0de4d7b53e80c40f5c679d083672c0d5b19482f2037b548493705abd49a','Rosângela Gomes da Silva','analista','20');
INSERT INTO "usuario" VALUES (3,'liliane@fivenet.com.br','scrypt:32768:8:1$0J4PlV4PRX5FsCky$b3a6bf3ea869bfeeb4e2e65961f53f5e9c0c889bca92fee08cc2d5b5b96d6723c00f6f6e4b802b01f1514d5447af7ef9758b32170fa0853f6724f43447e7c520','Liliane Barreto de Araújo','analista','21');
INSERT INTO "usuario" VALUES (4,'mariana@fivenet.com.br','scrypt:32768:8:1$BtJ1JWz35E8QWzkk$021ca3f7b5acd47a6138a92090a36a9b2acd3c015a8aeed485b3e7f0803bf2bbb62bc9857dd04912c26cceaaa3377c9b3c40c5b54dc13575aebb477a10412098','Mariana Souza Lima da Silva','analista','22');
INSERT INTO "usuario" VALUES (5,'Gustavo@fivenet.com.br','scrypt:32768:8:1$JfMfrK7s9KPp8dE7$efb5d682fc83566f7a397490915c649de6695cbb845bcb4ec56bcb0b46f5575423e66ae3282887690bff2304d324194ba5111374bb0d468b58db1ce1308ce6f8','Gustavo Marcondes','analista','23');
INSERT INTO "usuario" VALUES (6,'emilly@fivenet.com.br','scrypt:32768:8:1$0z6cJdaUqs5wG2d2$ba240e45e2e78c2a9985e84f8a70c8673428e8305229f02cdd58f0c60ff9ce0af6871562d2ee49b6dd24f3ab13a94f315a72cdd9da42ac974cc49e77225c86bd','Emilly vitória de Souza Simões','analista','24');
INSERT INTO "usuario" VALUES (7,'fabrini@fivenet.com.br','scrypt:32768:8:1$O4n6EwI6EvfPQ3Xw$5b9afc3dfb0063c47ce3718c9b60250968ca6d59e0c2ccc10235863d873e1ec62e313edf0e3d9bf582be2bf9a139a67a8a15de49cfb1fda4266124aecd3e03c8','Fabrini Aparecida Rodrigues','analista','25');
INSERT INTO "usuario" VALUES (8,'eduarda@fivenet.com.br','scrypt:32768:8:1$LihD8kIsgTFgDO80$2fa379730f316d58ce579f21c7901ac1e60ede826003016dad1b8a9954d7f68e795c7feccd63b10b01ece94609c798c78e263eb1a3cd3afdcdf0f639fcbadb8f','Eduarda Santana Soares Alves','analista','26');
INSERT INTO "usuario" VALUES (9,'sthefany@fivenet.com.br','scrypt:32768:8:1$kIJ8BflUBVcBzAjU$82f6c0b1dcfbea41427a6fbfc44723608782b47859052fb60259325976577dd22690da11ca906d8ea88f0e579c65650df9c4fec1aec51bb05df9bccbd4262be8','Sthefany Aparecida Martins dos Santos','analista','27');
INSERT INTO "usuario" VALUES (10,'aleson@fivenet.com.br','scrypt:32768:8:1$Q5AbI52iJQnbII7K$c6e79758e3fa07e3e6922926bd699f60ed69f995caeb4180ae491709c7ca4bb2d12b5abd1cf554c9b802db99dd80da95f066b59945d8a23359f5e0f879135759','Aleson Alves de Araújo','analista','28');
INSERT INTO "usuario" VALUES (11,'gabrielli@fivenet.com.br','scrypt:32768:8:1$uFnL5IZ6RCbhBkfQ$682c52d626cc3d4b08e8760b8ce07de6f86c866acb7c1e510999170f79bfa5c8c5f6ec11e28ba51a5f058ae1aaa83edcbf3868972de8ff8a2dbc8b10de9cfa73','Gabrielli Gomes da Silva','analista','29');
INSERT INTO "usuario" VALUES (12,'geovanna@fivenet.com.br','scrypt:32768:8:1$BARQ787OlYzSZyQ5$edc07e7e826ae18787e0f0b618d5956c554a0a2008205051e3fe459be93164e3cc941224e912658e3a76c50421b0be950b844089783c1416f1058ca3ebaae3ec','Geovanna Araujo Braz','administrador','30');
INSERT INTO "usuario" VALUES (13,'vinycius@fivenet.com.br','scrypt:32768:8:1$GOHSIzoimjx8CWk8$8a8575e8a78734daa195a30bf6fb2f7854b263b56388b003bfcafc17901ba37ef81c4d31857730827f66f09a01cdc3aa374eb697a8546c5d2c6854e585e63d7b','Vinycius Silva Fried Galdino','analista','31');
INSERT INTO "usuario" VALUES (14,'jaqueline@fivenet.com.br','scrypt:32768:8:1$Pl6U6QkVQRmuWApO$3b32e9ad34e48309d18800446f6fed731ae96c54868ad8b5f9048a36e289c28ab8cd39d1c4d1780500f09e803aefcfe8b2afed9ef9f052fc04295d6d4afd701c','Jaqueline Silva','administrador','32');
INSERT INTO "usuario" VALUES (15,'lucas@fivenet.com.br','scrypt:32768:8:1$2dvQb5c1K4jMsKKj$7df8e0e121afd1114a75dde947734a049f4d56f800465ea815629f868b93445b5a8d4c86a85867c34ec6e41a11e2005078062c3f7a3642f0121276f3a1311231','Lucas Veras','administrador','33');
INSERT INTO "usuario" VALUES (16,'felipe@fivenet.com.br','scrypt:32768:8:1$SncY2vLW7fcAaxgi$2d51ac4a5d01c809418f6cbf2f5dde9f1525c24420a386cccd4401765c809e74cae5c801764ed7c926485cf9bbd855950d5c3aaf5f5045ca0281fc2f41eef3b3','Felipe','administrador','51');
COMMIT;
