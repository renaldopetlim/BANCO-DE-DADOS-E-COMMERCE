CREATE TABLE CLIENTE (
  id_cliente INT PRIMARY KEY,
  tipo_cliente CHAR(2) CHECK (tipo_cliente IN ('PF', 'PJ')),
  email VARCHAR(100),
  telefone VARCHAR(20)
);

CREATE TABLE CLIENTE_PF (
  id_cliente INT PRIMARY KEY,
  nome VARCHAR(100),
  cpf CHAR(11) UNIQUE,
  data_nascimento DATE,
  FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE CLIENTE_PJ (
  id_cliente INT PRIMARY KEY,
  razao_social VARCHAR(150),
  cnpj CHAR(14) UNIQUE,
  nome_fantasia VARCHAR(100),
  FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE PAGAMENTO (
  id_pagamento INT PRIMARY KEY,
  id_cliente INT,
  data_pagamento DATE,
  valor_total DECIMAL(10,2),
  status VARCHAR(20),
  FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE FORMA_PAGAMENTO (
  id_forma_pagamento INT PRIMARY KEY,
  descricao VARCHAR(50)
);

CREATE TABLE PAGAMENTO_FORMA (
  id_pagamento INT,
  id_forma_pagamento INT,
  valor_parcial DECIMAL(10,2),
  PRIMARY KEY (id_pagamento, id_forma_pagamento),
  FOREIGN KEY (id_pagamento) REFERENCES PAGAMENTO(id_pagamento),
  FOREIGN KEY (id_forma_pagamento) REFERENCES FORMA_PAGAMENTO(id_forma_pagamento)
);

CREATE TABLE ENTREGA (
  id_entrega INT PRIMARY KEY,
  id_pagamento INT,
  endereco_entrega VARCHAR(200),
  cidade VARCHAR(100),
  estado CHAR(2),
  cep CHAR(8),
  data_envio DATE,
  data_entrega DATE,
  status_entrega VARCHAR(30),
  codigo_rastreamento VARCHAR(100),
  FOREIGN KEY (id_pagamento) REFERENCES PAGAMENTO(id_pagamento)
);