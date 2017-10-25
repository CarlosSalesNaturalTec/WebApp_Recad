create table Tbl_Funcionarios_CargaHor (
	ID_CargaH int IDENTITY primary key not null,
	ID_func int,
	ID_Munic int,
	ID_Inst int,
	Instituicao varchar(100),
	Carga varchar(50),
	inicio_atividades datetime
)
	