CREATE database Conectando_Talentos;
use Conectando_Talentos;

CREATE TABLE Candidato (
   ID_Candidato INT PRIMARY KEY,
   Nome VARCHAR(100),
   Nacionalidade VARCHAR(50),
   Telefone VARCHAR(20),
   Whatsapp VARCHAR(20),
   Endereco VARCHAR(200),
   Documento VARCHAR(20),
   Numero_Documento VARCHAR(20),
   Email VARCHAR(100),
   Senha VARCHAR(100),
   CEP VARCHAR(20),
   Estado VARCHAR(50),
   Cidade VARCHAR(50),
   Numero VARCHAR(10),
   Bairro VARCHAR(50),
   RUA VARCHAR(100)
);

CREATE TABLE Empresa (
   ID_Empresa INT PRIMARY KEY,
   CNPJ VARCHAR(20),
   Email VARCHAR(100),
   Nome_Fantasia VARCHAR(100),
   img_empresa VARCHAR(200),
   Senha VARCHAR(100),
   Razao_Social VARCHAR(100),
   Nome_Contato VARCHAR(100),
   Cargo_Contato VARCHAR(100),
   Telefone VARCHAR(20),
   Whatsapp VARCHAR(20),
   Endereco VARCHAR(200),
   CEP VARCHAR(20),
   Estado VARCHAR(50),
   Cidade VARCHAR(50),
   Numero VARCHAR(10),
   Bairro VARCHAR(50),
   RUA VARCHAR(100)
);

CREATE TABLE Login (
   ID_Login INT PRIMARY KEY,
   Email VARCHAR(100),
   Senha VARCHAR(100),
   fk_ID_Candidato INT,
   fk_ID_Empresa INT,
   FOREIGN KEY (fk_ID_Candidato) REFERENCES Candidato(ID_Candidato),
   FOREIGN KEY (fk_ID_Empresa) REFERENCES Empresa(ID_Empresa)
);

CREATE TABLE Vaga (
   ID_Vaga INT PRIMARY KEY,
   Tipo_Vinculo VARCHAR(50),
   Jornada VARCHAR(50),
   Turno VARCHAR(50),
   Cargo VARCHAR(100),
   Beneficios VARCHAR(200),
   Remuneracao DECIMAL(10, 2),
   Localizacao VARCHAR(200),
   Requisitos TEXT,
   Descricao TEXT,
   Email_Recrutador VARCHAR(100),
   Limite_Inscricao DATE,
   fk_ID_Empresa INT,
   FOREIGN KEY (fk_ID_Empresa) REFERENCES Empresa(ID_Empresa)
);
