-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cliente (
Nome VARCHAR(100),
Endereço VARCHAR(100),
Email VARCHAR(50),
Cpf VARCHAR(20),
ID_Cliente VARCHAR(10) PRIMARY KEY,
Telefone INTEGER
)

CREATE TABLE Reserva (
ID_Reserva INTEGER PRIMARY KEY,
Data_Reserva DATETIME,
Forma_Pagamento VARCHAR(20),
ID_Cliente VARCHAR(10),
FOREIGN KEY(ID_Cliente) REFERENCES Cliente (ID_Cliente)
)

CREATE TABLE Destino (
ID_Destino INTEGER PRIMARY KEY,
Nome_Destino VARCHAR(20),
Categoria_Destino VARCHAR(20),
Tempo VARCHAR(20),
Valor DECIMAL(10),
ID_Reserva INTEGER,
FOREIGN KEY(ID_Reserva) REFERENCES Reserva (ID_Reserva)
)

