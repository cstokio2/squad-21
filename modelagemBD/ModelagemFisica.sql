CREATE database Conectando_Talentos;
use Conectando_Talentos;

-- Tabela Login
CREATE TABLE Login (
    ID_Login int PRIMARY KEY auto_increment,
    Email VARCHAR(100),
    Senha VARCHAR(100)
);

-- Tabela Candidato
CREATE TABLE Candidato (
    ID_Refugiado int PRIMARY KEY auto_increment,
    Nome VARCHAR(255),
    Nacionalidade VARCHAR(100),
    Telefone VARCHAR(50),
    Whatsapp VARCHAR(50),
    CEP VARCHAR(20),
    Estado VARCHAR(50),
    Cidade VARCHAR(100),
    Numero VARCHAR(10),
    Bairro VARCHAR(100),
    RUA VARCHAR(100),
    Documento VARCHAR(50),
    Numero_Documento VARCHAR(50),
    Email VARCHAR(100),
    Senha VARCHAR(100),
    fk_Login_ID_Login int,
    FOREIGN KEY (fk_Login_ID_Login) REFERENCES Login(ID_Login)
);

-- Tabela Empresa
CREATE TABLE Empresa (
    ID_Empresa int PRIMARY KEY auto_increment,
    Nome_Fantasia VARCHAR(255),
    Razao_Social VARCHAR(255),
    Nome_Contato VARCHAR(255),
    Cargo_Contato VARCHAR(100),
    Telefone VARCHAR(50),
    Whatsapp VARCHAR(50),
    CEP VARCHAR(20),
    Estado VARCHAR(50),
    Cidade VARCHAR(100),
    Numero VARCHAR(10),
    Bairro VARCHAR(100),
    RUA VARCHAR(100),
    CNPJ VARCHAR(20),
    Email VARCHAR(100),
    Senha VARCHAR(100),
    fk_Login_ID_Login int,
    img_empresa blob,
    FOREIGN KEY (fk_Login_ID_Login) REFERENCES Login(ID_Login)
);

-- Tabela Vaga
CREATE TABLE Vaga (
    ID_Vaga int PRIMARY KEY auto_increment,
    Remuneracao VARCHAR(100),
    Requisitos VARCHAR(255),
    Localizacao VARCHAR(100),
    Descricao TEXT,
    Email_Recrutador VARCHAR(100),
    Cargo VARCHAR(100),
    Turno VARCHAR(50),
    Jornada VARCHAR(50),
    Tipo_Vinculo VARCHAR(50),
    Beneficios VARCHAR(255),
    Limite_Inscricao DATE,
    fk_Empresa_ID_Empresa int,
    FOREIGN KEY (fk_Empresa_ID_Empresa) REFERENCES Empresa(ID_Empresa)
);
