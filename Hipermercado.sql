DROP SCHEMA HIPERMERCADO CASCADE;
CREATE SCHEMA HIPERMERCADO;
SET SEARCH_PATH TO HIPERMERCADO;
\encoding 'UTF8'

-- SESSAO
CREATE TABLE SESSAO (
  CODIGO INT PRIMARY KEY,
  NOME VARCHAR(100) NOT NULL
);

-- PESSOA
CREATE TABLE PESSOA (
  CPF CHAR(11) PRIMARY KEY,
  ENDERECO VARCHAR(255) NOT NULL,
  NOME VARCHAR(100) NOT NULL,
  TELEFONE VARCHAR(15) NOT NULL,
  EMAIL VARCHAR(100) NOT NULL,
  DATA_NASC DATE NOT NULL
);

-- PROMOCOES
CREATE TABLE PROMOCOES (
  CODIGO INT PRIMARY KEY,
  DATA_INICIO DATE NOT NULL,
  DATA_FIM DATE NOT NULL,
  NOME VARCHAR(100) NOT NULL,
  DESCRICAO TEXT NOT NULL
);

-- CLASSE
CREATE TABLE CLASSE (
  VALOR_MIN DECIMAL(10, 2) NOT NULL,
  NOME VARCHAR(100) PRIMARY KEY
);

-- HISTORICO_COMPRAS
CREATE TABLE HISTORICO_COMPRAS (
  NRO_CUPOM INT PRIMARY KEY,
  CPF CHAR(11) NOT NULL,
  DEVOLUCAO BOOLEAN NOT NULL,
  MOTIVO_DEVOLUCAO VARCHAR(255),
  FOREIGN KEY (CPF) REFERENCES PESSOA(CPF)
);

-- RELATORIO_VENDA
CREATE TABLE RELATORIO_VENDA (
  CPF_CLIENTE CHAR(11) NOT NULL,
  NRO_RELATORIO INT PRIMARY KEY,
  DATA DATE NOT NULL,
  VALOR DECIMAL(10, 2) NOT NULL,
  FORMA_PAGAMENTO VARCHAR(50) NOT NULL,
  FOREIGN KEY (CPF_CLIENTE) REFERENCES PESSOA(CPF)
);

-- CATEGORIA
CREATE TABLE CATEGORIA (
  CODIGO_IDENTIFICACAO INT PRIMARY KEY,
  DESCRICAO VARCHAR(255) NOT NULL,
  CODIGO_SESSAO INT NOT NULL,
  FOREIGN KEY (CODIGO_SESSAO) REFERENCES SESSAO(CODIGO)
);

-- PRODUTOS
CREATE TABLE PRODUTOS (
  NUMERO_CADASTRO INT PRIMARY KEY,
  DESCRICAO VARCHAR(255) NOT NULL,
  NOME_FABRICANTE VARCHAR(100) NOT NULL,
  UNIDADE_VENDA VARCHAR(50) NOT NULL,
  FOTO VARCHAR(255),
  PRECO_VENDA DECIMAL(10, 2) NOT NULL,
  MEDIA_VENDAS_MENSAL INT NOT NULL,
  QUANTIDADE_ESTOQUE INT NOT NULL,
  CODIGO_IDENTIFICACAO INT NOT NULL,
  FOREIGN KEY (CODIGO_IDENTIFICACAO) REFERENCES CATEGORIA(CODIGO_IDENTIFICACAO)
);

-- CLIENTE
CREATE TABLE CLIENTE (
  PROFISSAO VARCHAR(100) NOT NULL,
  VALOR_GASTO DECIMAL(10, 2) NOT NULL,
  CPF CHAR(11) PRIMARY KEY,
  NRO_CUPOM INT,
  FOREIGN KEY (CPF) REFERENCES PESSOA(CPF),
  FOREIGN KEY (NRO_CUPOM) REFERENCES HISTORICO_COMPRAS(NRO_CUPOM)
);

-- ESPECIAL
CREATE TABLE ESPECIAL (
  CPF CHAR(11) PRIMARY KEY,
  NOME_CLASSE VARCHAR(100) NOT NULL,
  FOREIGN KEY (CPF) REFERENCES CLIENTE(CPF),
  FOREIGN KEY (NOME_CLASSE) REFERENCES CLASSE(NOME)
);

-- FIDELIDADE
CREATE TABLE FIDELIDADE (
  CPF CHAR(11) PRIMARY KEY,
  QTDE_COMPRAS INT NOT NULL,
  NIVEL_FIDELIDADE VARCHAR(50) NOT NULL,
  FOREIGN KEY (CPF) REFERENCES CLIENTE(CPF)
);

-- FORNECIMENTO
CREATE TABLE FORNECIMENTO (
  PRECO DECIMAL(10, 2) NOT NULL,
  NUMERO_CADASTRO INT PRIMARY KEY,
  FOREIGN KEY (NUMERO_CADASTRO) REFERENCES PRODUTOS(NUMERO_CADASTRO)
);

-- PRODUTO_PROMOCAO
CREATE TABLE PRODUTO_PROMOCAO (
  CODIGO_PROMOCAO INT NOT NULL,
  NUMERO_CADASTRO INT NOT NULL,
  DESCONTO_NORMAL DECIMAL(5, 2) NOT NULL,
  DESCONTO_ESPECIAL DECIMAL(5, 2) NOT NULL,
  PRIMARY KEY (CODIGO_PROMOCAO, NUMERO_CADASTRO),
  FOREIGN KEY (CODIGO_PROMOCAO) REFERENCES PROMOCOES(CODIGO),
  FOREIGN KEY (NUMERO_CADASTRO) REFERENCES PRODUTOS(NUMERO_CADASTRO)
);

-- PEDIDO

-- GERENTE
CREATE TABLE GERENTE (
  CPF CHAR(11) PRIMARY KEY,
  DATA_INGRESSO DATE NOT NULL,
  FORMACAO_BASICA VARCHAR(100) NOT NULL,
  FOREIGN KEY (CPF) REFERENCES PESSOA(CPF)
);

-- FUNCIONARIO
CREATE TABLE FUNCIONARIO (
  CPF CHAR(11) PRIMARY KEY,
  NIS CHAR(11) NOT NULL,
  SALARIO DECIMAL(10, 2) NOT NULL,
  HORA_EXTRA DECIMAL(10, 2),
  JORNADA_TRABALHO INT NOT NULL,
  FORMACAO_ESCOLAR VARCHAR(100) NOT NULL,
  ESTADO_CIVIL VARCHAR(50),
  CPF_GERENTE CHAR(11),
  FOREIGN KEY (CPF) REFERENCES PESSOA(CPF),
  FOREIGN KEY (CPF_GERENTE) REFERENCES GERENTE(CPF)
);

-- ATENDENTE
CREATE TABLE ATENDENTE (
  CPF CHAR(11) PRIMARY KEY,
  FOREIGN KEY (CPF) REFERENCES FUNCIONARIO(CPF)
);

-- REPOSITOR, EMPACOTADOR, FAXINEIRO
CREATE TABLE REPOSITOR (
  CPF CHAR(11) PRIMARY KEY,
  FOREIGN KEY (CPF) REFERENCES FUNCIONARIO(CPF)
);

CREATE TABLE EMPACOTADOR (
  CPF CHAR(11) PRIMARY KEY,
  FOREIGN KEY (CPF) REFERENCES FUNCIONARIO(CPF)
);

CREATE TABLE FAXINEIRO (
  CPF CHAR(11) PRIMARY KEY,
  FOREIGN KEY (CPF) REFERENCES FUNCIONARIO(CPF)
);

-- COMPRA
CREATE TABLE COMPRA (
  CUPOMCARRINHO INT PRIMARY KEY,
  DATA DATE NOT NULL,
  HORARIO TIME NOT NULL,
  VALORTOTAL DECIMAL(10, 2) NOT NULL,
  VALORDESCONTO DECIMAL(10, 2) NOT NULL,
  FORMAPAGAMENTO VARCHAR(50) NOT NULL,
  CPF_ATENDENTE CHAR(11) NOT NULL,
  NRORELATORIO INT NOT NULL,
  NROHIST INT NOT NULL,
  FOREIGN KEY (CPF_ATENDENTE) REFERENCES ATENDENTE(CPF),
  FOREIGN KEY (NRORELATORIO) REFERENCES RELATORIO_VENDA(NRO_RELATORIO),
  FOREIGN KEY (NROHIST) REFERENCES HISTORICO_COMPRAS(NRO_CUPOM)
);

-- PRODUTO_COMPRA
CREATE TABLE PRODUTO_COMPRA (
  CUPOMCARRINHO INT NOT NULL,
  NUMERO_CADASTRO INT NOT NULL,
  QUANTIDADE INT NOT NULL,
  DESCONTO DECIMAL(5, 2),
  PRIMARY KEY (CUPOMCARRINHO, NUMERO_CADASTRO),
  FOREIGN KEY (CUPOMCARRINHO) REFERENCES COMPRA(CUPOMCARRINHO),
  FOREIGN KEY (NUMERO_CADASTRO) REFERENCES PRODUTOS(NUMERO_CADASTRO)
);

-- PEDIDO
CREATE TABLE PEDIDO (
  NUMERO INT PRIMARY KEY,
  DATA_EMISSAO DATE NOT NULL,
  DATA_PREVISTA DATE NOT NULL,
  DATA_ENTREGA DATE,
  DEVOLUCAO BOOLEAN NOT NULL,
  VALOR DECIMAL(10, 2) NOT NULL,
  PAGAMENTO VARCHAR(50) NOT NULL,
  VALOR_COM_DESCONTO DECIMAL(10, 2),
  CPF_GERENTE CHAR(11),
  FOREIGN KEY (CPF_GERENTE) REFERENCES GERENTE(CPF)
);

-- PEDIDO_PRODUTOS
CREATE TABLE PEDIDO_PRODUTOS (
  NUMERO INT NOT NULL,
  NUMERO_CADASTRO INT NOT NULL,
  QUANTIDADE INT NOT NULL,
  PRIMARY KEY (NUMERO, NUMERO_CADASTRO),
  FOREIGN KEY (NUMERO) REFERENCES PEDIDO(NUMERO),
  FOREIGN KEY (NUMERO_CADASTRO) REFERENCES PRODUTOS(NUMERO_CADASTRO)
);

-- FORNECEDOR
CREATE TABLE FORNECEDOR (
  CNPJ CHAR(14) PRIMARY KEY,
  DENOMINACAO_SOCIAL VARCHAR(255) NOT NULL,
  CEP CHAR(8) NOT NULL,
  ESTADO CHAR(2) NOT NULL,
  CIDADE VARCHAR(100) NOT NULL,
  BAIRRO VARCHAR(100) NOT NULL,
  EMAIL VARCHAR(100) NOT NULL,
  PESSOA_CONTATO VARCHAR(100) NOT NULL,
  PRAZO_ENTREGA INT NOT NULL,
  CONDICOES_PAGAMENTO VARCHAR(255) NOT NULL,
  DESCONTOS DECIMAL(5, 2),
  NUMERO_PEDIDO INT,
  FOREIGN KEY (NUMERO_PEDIDO) REFERENCES PEDIDO(NUMERO)
);

-- PRODUTOS_ANO_ANTERIOR
CREATE TABLE PRODUTOS_ANO_ANTERIOR (
  VALOR DECIMAL(10, 2) NOT NULL,
  NUMRELATORIO INT NOT NULL,
  CNPJ CHAR(14) NOT NULL,
  PRIMARY KEY (NUMRELATORIO, CNPJ),
  FOREIGN KEY (CNPJ) REFERENCES FORNECEDOR(CNPJ)
);

-- LISTA_DE_PRODUTOS
CREATE TABLE LISTA_DE_PRODUTOS (
  NUMERO_CADASTRO INT NOT NULL,
  NUMRELATORIO INT NOT NULL,
  CNPJ CHAR(14) NOT NULL,
  PRIMARY KEY (NUMERO_CADASTRO, NUMRELATORIO, CNPJ),
  FOREIGN KEY (NUMERO_CADASTRO) REFERENCES PRODUTOS(NUMERO_CADASTRO),
  FOREIGN KEY (NUMRELATORIO, CNPJ) REFERENCES PRODUTOS_ANO_ANTERIOR(NUMRELATORIO, CNPJ)
);

-- FORNECEDOR_FONES
CREATE TABLE FORNECEDOR_FONES (
  FONE VARCHAR(15) NOT NULL,
  CNPJ CHAR(14) NOT NULL,
  PRIMARY KEY (FONE, CNPJ),
  FOREIGN KEY (CNPJ) REFERENCES FORNECEDOR(CNPJ)
);

-- OUTROS
CREATE TABLE OUTROS (
  CPF CHAR(11) PRIMARY KEY,
  FOREIGN KEY (CPF) REFERENCES FUNCIONARIO(CPF)
);
