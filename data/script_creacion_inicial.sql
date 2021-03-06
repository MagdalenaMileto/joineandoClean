USE [GD2C2016]

GO

-- Validacion de existencia 
IF SCHEMA_ID('JOINEANDO_ANDO') IS NOT NULL
BEGIN
  --TABLAS 
  IF OBJECT_ID('JOINEANDO_ANDO.Habilitados') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].habilitados

  IF OBJECT_ID('JOINEANDO_ANDO.Medico_Especialidad') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].medico_especialidad

  IF OBJECT_ID('JOINEANDO_ANDO.Rol_Funcionabilidad') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].rol_funcionabilidad

  IF OBJECT_ID('JOINEANDO_ANDO.Usuario_Rol') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].usuario_rol

  IF OBJECT_ID('JOINEANDO_ANDO.Rol') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].rol

  IF OBJECT_ID('JOINEANDO_ANDO.Funcionabilidades') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].funcionabilidades

  IF OBJECT_ID('JOINEANDO_ANDO.Sintomas') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].[sintomas]

  IF OBJECT_ID('JOINEANDO_ANDO.Resultados') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].resultados

  IF OBJECT_ID('JOINEANDO_ANDO.Consulta_Medica') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].consulta_medica

  IF OBJECT_ID('JOINEANDO_ANDO.Bonos') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].bonos

  IF OBJECT_ID('JOINEANDO_ANDO.Compra_Bonos') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].compra_bonos

  IF OBJECT_ID('JOINEANDO_ANDO.Turnos') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].turnos

  IF OBJECT_ID('JOINEANDO_ANDO.Cancelaciones') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].cancelaciones

  IF OBJECT_ID('JOINEANDO_ANDO.Tipo_Cancelaciones') IS NOT NULL
    DROP TABLE joineando_ando.tipo_cancelaciones

  IF OBJECT_ID('JOINEANDO_ANDO.Dias_Atencion') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].dias_atencion

  IF OBJECT_ID('JOINEANDO_ANDO.Agendas') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].agendas

  IF OBJECT_ID('JOINEANDO_ANDO.Dias_Semana') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].dias_semana

  IF OBJECT_ID('JOINEANDO_ANDO.Especialidades') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].especialidades

  IF OBJECT_ID('JOINEANDO_ANDO.Medicos') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].medicos

  IF OBJECT_ID('JOINEANDO_ANDO.Hist_Cambios') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].[hist_cambios]

  IF OBJECT_ID('JOINEANDO_ANDO.Pacientes') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].pacientes

  IF OBJECT_ID('JOINEANDO_ANDO.Planes') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].planes

  IF OBJECT_ID('JOINEANDO_ANDO.Tipo_Especialidad') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].tipo_especialidad

  IF OBJECT_ID('JOINEANDO_ANDO.Usuarios') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].usuarios

  IF OBJECT_ID('JOINEANDO_ANDO.Tipo_Documento') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].tipo_documento

  IF OBJECT_ID('JOINEANDO_ANDO.Sexo') IS NOT NULL
    DROP TABLE [JOINEANDO_ANDO].sexo

  --Stored Procedures 
  IF OBJECT_ID('JOINEANDO_ANDO.cantidadFamilia', 'FN') IS NOT NULL
    DROP FUNCTION joineando_ando.cantidadfamilia;

  IF OBJECT_ID('[JOINEANDO_ANDO].lista_planes') IS NOT NULL
    DROP PROCEDURE [JOINEANDO_ANDO].lista_planes

  IF OBJECT_ID('[JOINEANDO_ANDO].lista_especialidades') IS NOT NULL
    DROP PROCEDURE [JOINEANDO_ANDO].lista_especialidades

  IF OBJECT_ID('[JOINEANDO_ANDO].cargar_sintoma') IS NOT NULL
    DROP PROCEDURE [JOINEANDO_ANDO].cargar_sintoma

  IF OBJECT_ID('[JOINEANDO_ANDO].cargar_diagnostico') IS NOT NULL
    DROP PROCEDURE [JOINEANDO_ANDO].cargar_diagnostico

  IF OBJECT_ID('[JOINEANDO_ANDO].busqueda_medico_resultado') IS NOT NULL
    DROP PROCEDURE [JOINEANDO_ANDO].busqueda_medico_resultado

  IF OBJECT_ID('[JOINEANDO_ANDO].confirmar_presencia') IS NOT NULL
    DROP PROCEDURE [JOINEANDO_ANDO].confirmar_presencia

  IF OBJECT_ID('[JOINEANDO_ANDO].listado_especialidades') IS NOT NULL
    DROP PROCEDURE [JOINEANDO_ANDO].listado_especialidades

  IF OBJECT_ID('JOINEANDO_ANDO.bonos_disponibles') IS NOT NULL
    DROP PROCEDURE joineando_ando.bonos_disponibles

  IF OBJECT_ID('JOINEANDO_ANDO.listado_registro_atencion') IS NOT NULL
    DROP PROCEDURE joineando_ando.listado_registro_atencion

  IF OBJECT_ID('JOINEANDO_ANDO.compra_bono') IS NOT NULL
    DROP PROCEDURE joineando_ando.compra_bono

  IF OBJECT_ID('JOINEANDO_ANDO.precio_bono') IS NOT NULL
    DROP PROCEDURE joineando_ando.precio_bono

  IF OBJECT_ID('JOINEANDO_ANDO.listar_cambios') IS NOT NULL
    DROP PROCEDURE joineando_ando.listar_cambios

  IF OBJECT_ID('JOINEANDO_ANDO.baja_paciente') IS NOT NULL
    DROP PROCEDURE joineando_ando.baja_paciente

  IF OBJECT_ID('JOINEANDO_ANDO.actualizar_paciente') IS NOT NULL
    DROP PROCEDURE joineando_ando.actualizar_paciente

  IF OBJECT_ID('JOINEANDO_ANDO.listado_sexo') IS NOT NULL
    DROP PROCEDURE joineando_ando.listado_sexo

  IF OBJECT_ID('JOINEANDO_ANDO.listado_planes') IS NOT NULL
    DROP PROCEDURE joineando_ando.listado_planes

  IF OBJECT_ID('JOINEANDO_ANDO.listado_tipo_documentos') IS NOT NULL
    DROP PROCEDURE joineando_ando.listado_tipo_documentos

  IF OBJECT_ID('JOINEANDO_ANDO.crear_paciente') IS NOT NULL
    DROP PROCEDURE joineando_ando.crear_paciente

  IF OBJECT_ID('JOINEANDO_ANDO.filtro_paciente') IS NOT NULL
    DROP PROCEDURE joineando_ando.filtro_paciente

  IF OBJECT_ID('JOINEANDO_ANDO.validar_usuario') IS NOT NULL
    DROP PROCEDURE joineando_ando.validar_usuario

  IF OBJECT_ID('JOINEANDO_ANDO.roles_x_usuario') IS NOT NULL
    DROP PROCEDURE joineando_ando.roles_x_usuario

  IF OBJECT_ID('JOINEANDO_ANDO.seleccionar_funcionabilidades_x_rol') IS NOT
    NULL
    DROP PROCEDURE joineando_ando.seleccionar_funcionabilidades_x_rol

  IF OBJECT_ID('JOINEANDO_ANDO.seleccionar_funcionabilidades') IS NOT NULL
    DROP PROCEDURE joineando_ando.seleccionar_funcionabilidades

  IF OBJECT_ID('JOINEANDO_ANDO.actualizar_Rol') IS NOT NULL
    DROP PROCEDURE joineando_ando.actualizar_rol

  IF OBJECT_ID('JOINEANDO_ANDO.baja_funcionablilida_x_rol') IS NOT NULL
    DROP PROCEDURE joineando_ando.baja_funcionablilida_x_rol

  IF OBJECT_ID('JOINEANDO_ANDO.alta_funcionabiliad_x_rol') IS NOT NULL
    DROP PROCEDURE joineando_ando.alta_funcionabiliad_x_rol

  IF OBJECT_ID('JOINEANDO_ANDO.alta_Rol') IS NOT NULL
    DROP PROCEDURE joineando_ando.alta_rol

  IF OBJECT_ID('JOINEANDO_ANDO.Seleccionar_Propiedades_Rol') IS NOT NULL
    DROP PROCEDURE joineando_ando.seleccionar_propiedades_rol

  IF OBJECT_ID('JOINEANDO_ANDO.inHabilitar_Rol') IS NOT NULL
    DROP PROCEDURE joineando_ando.inhabilitar_rol

  IF OBJECT_ID('JOINEANDO_ANDO.filtro_rol') IS NOT NULL
    DROP PROCEDURE joineando_ando.filtro_rol

  IF OBJECT_ID('JOINEANDO_ANDO.listarRoles') IS NOT NULL
    DROP PROCEDURE joineando_ando.listarroles

  IF OBJECT_ID('JOINEANDO_ANDO.validar_usuario') IS NOT NULL
    DROP PROCEDURE joineando_ando.validar_usuario

  IF OBJECT_ID('JOINEANDO_ANDO.UsuariosPorId_seleccion') IS NOT NULL
    DROP PROCEDURE joineando_ando.usuariosporid_seleccion

  IF OBJECT_ID('JOINEANDO_ANDO.listarRoles') IS NOT NULL
    DROP PROCEDURE joineando_ando.listarroles

  IF OBJECT_ID('JOINEANDO_ANDO.Seleccionar_rol') IS NOT NULL
    DROP PROCEDURE joineando_ando.seleccionar_rol

  IF OBJECT_ID('JOINEANDO_ANDO.Seleccionar_Funcionabilidades_x_Rol') IS NOT
    NULL
    DROP PROCEDURE joineando_ando.seleccionar_funcionabilidades_x_rol

  IF OBJECT_ID('JOINEANDO_ANDO.Seleccionar_Funcionabilidades') IS NOT NULL
    DROP PROCEDURE joineando_ando.seleccionar_funcionabilidades

  IF OBJECT_ID('JOINEANDO_ANDO.Historial_Modificacion_Paciente') IS NOT NULL
    DROP PROCEDURE joineando_ando.historial_modificacion_paciente

  IF OBJECT_ID('JOINEANDO_ANDO.ESPECIALIDADMedicoPoseeAgenda') IS NOT NULL
    DROP PROCEDURE joineando_ando.especialidadmedicoposeeagenda

  IF OBJECT_ID('JOINEANDO_ANDO.MEDICOHorasSemanales') IS NOT NULL
    DROP PROCEDURE joineando_ando.medicohorassemanales

  IF OBJECT_ID('JOINEANDO_ANDO.ESPECIALIDADEspecialidadesMedico') IS NOT
    NULL
    DROP PROCEDURE joineando_ando.especialidadespecialidadesmedico

  IF OBJECT_ID('JOINEANDO_ANDO.MEDICOTodos') IS NOT NULL
    DROP PROCEDURE joineando_ando.medicotodos

  IF OBJECT_ID('JOINEANDO_ANDO.ESPECIALIDADTodas') IS NOT NULL
    DROP PROCEDURE joineando_ando.especialidadtodas

  IF OBJECT_ID('JOINEANDO_ANDO.TURNOHorarios') IS NOT NULL
    DROP PROCEDURE joineando_ando.turnohorarios

  IF OBJECT_ID('JOINEANDO_ANDO.TURNOEstaOcupado') IS NOT NULL
    DROP PROCEDURE joineando_ando.turnoestaocupado

  IF OBJECT_ID('JOINEANDO_ANDO.PERSONATurnos') IS NOT NULL
    DROP PROCEDURE joineando_ando.personaturnos

  IF OBJECT_ID('JOINEANDO_ANDO.ListadoEspecialidadesConMasCancelaciones') IS
    NOT NULL
    DROP PROCEDURE joineando_ando.listadoespecialidadesconmascancelaciones

  IF OBJECT_ID('JOINEANDO_ANDO.ListadoProfesionalesConMenosHorasTrabajadas')
    IS NOT
    NULL
    DROP PROCEDURE
    joineando_ando.listadoprofesionalesconmenoshorastrabajadas

  IF OBJECT_ID('JOINEANDO_ANDO.ListadoEspecialidadesConMasBonosUtilizados')
    IS
    NOT
    NULL
    DROP PROCEDURE joineando_ando.listadoespecialidadesconmasbonosutilizados

  IF OBJECT_ID('JOINEANDO_ANDO.ListadoAfiliadosConMayorBonosComprados') IS
    NOT
    NULL
    DROP PROCEDURE joineando_ando.listadoafiliadosconmayorbonoscomprados

  IF OBJECT_ID('JOINEANDO_ANDO.ListadoProfesionalesMasConsultadosPorPlan')
    IS
    NOT
    NULL
    DROP PROCEDURE joineando_ando.listadoprofesionalesmasconsultadosporplan

  IF OBJECT_ID('JOINEANDO_ANDO.TIPOCANCELACIONTodos') IS NOT NULL
    DROP PROCEDURE joineando_ando.tipocancelaciontodos

  IF OBJECT_ID('JOINEANDO_ANDO.CANCELACIONEliminarTurnoAfiliado') IS NOT
    NULL
    DROP PROCEDURE joineando_ando.cancelacioneliminarturnoafiliado

  IF OBJECT_ID('JOINEANDO_ANDO.CANCELACIONEliminarTurnoProfesional') IS NOT
    NULL
    DROP PROCEDURE joineando_ando.cancelacioneliminarturnoprofesional

  IF OBJECT_ID('JOINEANDO_ANDO.TURNOInsertarNuevo') IS NOT NULL
    DROP PROCEDURE joineando_ando.turnoinsertarnuevo

  IF OBJECT_ID('JOINEANDO_ANDO.AGENDAInsertarNueva') IS NOT NULL
    DROP PROCEDURE joineando_ando.agendainsertarnueva

  IF OBJECT_ID('JOINEANDO_ANDO.AGENDARangoColisionaConAgendaExistente') IS
    NOT
    NULL
    DROP PROCEDURE joineando_ando.agendarangocolisionaconagendaexistente

  IF OBJECT_ID('JOINEANDO_ANDO.MEDICOTurnos') IS NOT NULL
    DROP PROCEDURE joineando_ando.medicoturnos

  --Funciones 
  IF OBJECT_ID('JOINEANDO_ANDO.Existe_Usuario') IS NOT NULL
    DROP FUNCTION joineando_ando.existe_usuario

  IF OBJECT_ID('JOINEANDO_ANDO.Cantidad_Intentos_Fallidos') IS NOT NULL
    DROP FUNCTION joineando_ando.cantidad_intentos_fallidos

  IF OBJECT_ID('JOINEANDO_ANDO.COLISIONANRangos') IS NOT NULL
    DROP FUNCTION joineando_ando.colisionanrangos

  -- Vistas 
  IF OBJECT_ID('JOINEANDO_ANDO.Historial_cambios_paciente') IS NOT NULL
    DROP VIEW joineando_ando.historial_cambios_paciente

  -- Tipos 
  IF TYPE_ID('JOINEANDO_ANDO.DIAS_SEMANA_AGENDA') IS NOT NULL
    DROP TYPE JOINEANDO_ANDO.DIAS_SEMANA_AGENDA

  --Esquema 
  IF SCHEMA_ID('JOINEANDO_ANDO') IS NOT NULL
    DROP SCHEMA [JOINEANDO_ANDO]
END

GO

--Creacion de Esquema 
CREATE SCHEMA [JOINEANDO_ANDO] AUTHORIZATION [gd]

GO

--Creacion de Tablas 
SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

CREATE TABLE [JOINEANDO_ANDO].[agendas] (
  [agenda_id] [INT] IDENTITY (1, 1) NOT NULL,
  [medico_id] [INT] NOT NULL,
  [especialidad_id] [INT] NOT NULL,
  [dia_inicio] [DATE] NOT NULL,
  [dia_fin] [DATE] NOT NULL,
)

GO

CREATE TABLE [JOINEANDO_ANDO].[dias_atencion] (
  [agenda_id] [INT] NOT NULL,
  [dia_id] [INT] NOT NULL,
  [inicio_horario] time(7) NOT NULL,
  [fin_horario] time(7) NOT NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[bonos] (
  [bono_id] [INT] IDENTITY (1, 1) NOT NULL,
  [plan_id] [INT] NOT NULL,
  [numero_consulta_medica] [INT],
  [fecha_impresion] datetime,
  [numero_afiliado] [INT] NOT NULL,
  [compra_id] [INT] NOT NULL,
)

GO

CREATE TABLE [JOINEANDO_ANDO].[tipo_cancelaciones] (
  [tipo_cancelacion_id] [INT] NOT NULL,
  [descripcion] [NVARCHAR](50) NOT NULL
)

CREATE TABLE [JOINEANDO_ANDO].[cancelaciones] (
  [cancelacion_id] [INT] IDENTITY (1, 1) NOT NULL,
  [tipo] [INT] NOT NULL,
  [descripcion] [NVARCHAR](255) NOT NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[compra_bonos] (
  [compra_id] [INT] IDENTITY (1, 1) NOT NULL,
  [paciente_id] [INT] NOT NULL,
  [monto] [NUMERIC](18, 2) NOT NULL,
  [cantidad] [INT] NOT NULL,
  [fecha_compra] [DATETIME] NOT NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[consulta_medica] (
  [consulta_medica_id] [INT] IDENTITY (1, 1) NOT NULL,
  [turno_id] [INT] NOT NULL,
  [bono_id] [INT] NOT NULL,
  [horario_llegada] [DATETIME] NULL,
  [horario_atencion] [DATETIME] NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[especialidades] (
  [especialidad_id] [INT] NOT NULL,
  [nombre_especialidad] [NVARCHAR](255) NOT NULL,
  [tipo_especialidad_id] [INT] NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[funcionabilidades] (
  [funcionabilidad_id] [INT] IDENTITY (1, 1) NOT NULL,
  [nombre] [NVARCHAR](50) NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[habilitados] (
  [paciente_id] [INT] NOT NULL,
  [estado] [BIT] NOT NULL,
  [fecha_alta] [DATETIME] NULL,
  [fecha_baja] [DATETIME] NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[medico_especialidad] (
  [medico_id] [INT] NOT NULL,
  [especialidad_id] [INT] NOT NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[medicos] (
  [medico_id] [INT] NOT NULL,
  [matricula] [INT],
)

GO

CREATE TABLE [JOINEANDO_ANDO].[pacientes] (
  [paciente_id] [INT] NOT NULL,
  [estado_civil] [NVARCHAR](255),
  [familiares_a_cargo] [INT] NOT NULL,
  [numero_afiliado] [INT] NOT NULL,
  [plan_id] [INT] NOT NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[planes] (
  [plan_id] [INT] NOT NULL,
  [nombre] [NVARCHAR](255) NOT NULL,
  [precio_bono_consulta] [NUMERIC](18, 0) NOT NULL,
  [precio_bono_farmacia] [NUMERIC](18, 0) NOT NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[resultados] (
  [resultado_id] [INT] IDENTITY (1, 1) NOT NULL,
  [consulta_medica_id] [INT] NOT NULL,
  [enfermedad] [NVARCHAR](255) NULL,
  [descripcion] [NVARCHAR](255) NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[sintomas] (
  [sintoma_id] [INT] IDENTITY (1, 1) NOT NULL,
  [resultado_id] [INT] NOT NULL,
  [descripcion] nvarchar(255) NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[rol] (
  [rol_id] [INT] IDENTITY (1, 1) NOT NULL,
  [nombre] [NVARCHAR](50) NOT NULL,
  [habilitado] [BIT] NOT NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[rol_funcionabilidad] (
  [rol_id] [INT] NOT NULL,
  [funcionabilidad_id] [INT] NOT NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[tipo_documento] (
  [tipo_documento_id] [INT] IDENTITY (1, 1) NOT NULL,
  [tipo] [NVARCHAR](255) NOT NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[tipo_especialidad] (
  [tipo_especialidad_id] [INT] NOT NULL,
  [especializacion] [NVARCHAR](255) NOT NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[turnos] (
  [turno_id] [INT] IDENTITY (1, 1) NOT NULL,
  [paciente_id] [INT] NOT NULL,
  [agenda_id] [INT] NOT NULL,
  [fecha] [DATE] NOT NULL,
  [horario] [TIME](7) NOT NULL,
  [cancelacion_id] [INT] NULL,
  [asistencia] [BIT] NOT NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[usuario_rol] (
  [usuario_id] [INT] NOT NULL,
  [rol_id] [INT] NOT NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[usuarios] (
  [usuario_id] [INT] IDENTITY (1, 1) NOT NULL,
  [nombre] [NVARCHAR](255) NOT NULL,
  [apellido] [NVARCHAR](255) NOT NULL,
  [numero_documento] [NUMERIC](18, 0) NOT NULL,
  [tipo_documento_id] [INT] NOT NULL,
  [direccion] [NVARCHAR](255) NOT NULL,
  [telefono] [NUMERIC](18, 0) NOT NULL,
  [mail] [NVARCHAR](50) NOT NULL,
  [fecha_nacimiento] [DATETIME] NOT NULL,
  [sexo_id] [INT],
  [nombre_usuario] [NVARCHAR](255) NOT NULL,
  [contrasena] [NVARCHAR](255) NOT NULL,
  [habilitado] [BIT] NOT NULL,
  [intentos_fallidos] [INT] NOT NULL
)

DBCC CHECKIDENT ('[JOINEANDO_ANDO].[Usuarios]', RESEED, 10000)

GO

CREATE TABLE [JOINEANDO_ANDO].[sexo] (
  [sexo_id] [INT] IDENTITY (1, 1) NOT NULL,
  [descripcion] [NVARCHAR](20) NOT NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[dias_semana] (
  [dia_semana_id] [INT] IDENTITY (1, 1) NOT NULL,
  [dia] [NVARCHAR](20) NOT NULL
)

GO

CREATE TABLE [JOINEANDO_ANDO].[hist_cambios] (
  [paciente_id] [INT] NOT NULL,
  [descripcion] [NVARCHAR](255) NOT NULL,
  [fecha_mod] [DATETIME]
)

GO

--Vistas 
CREATE VIEW joineando_ando.historial_cambios_paciente
AS
SELECT
  P.paciente_id AS AfiliadoId,
  u.nombre AS NombreAfiliado,
  U.apellido AS ApellidoAfiliado,
  h.fecha_mod AS FechaModificacion,
  H.descripcion AS Descripcion
FROM joineando_ando.usuarios AS U
INNER JOIN joineando_ando.pacientes AS P
  ON U.usuario_id = P.paciente_id
INNER JOIN joineando_ando.hist_cambios AS H
  ON P.paciente_id = H.paciente_id

GO

--Funciones 
CREATE FUNCTION joineando_ando.Cantidadfamilia (@numeroAfiliado int)
RETURNS int
AS
-- Returns the stock level for the product.   
BEGIN
  RETURN (SELECT TOP 1
    COUNT(*)
  FROM [JOINEANDO_ANDO].[pacientes]
  WHERE (numero_afiliado / 100) = @numeroAfiliado / 100
  GROUP BY (numero_afiliado / 100))
END;

GO

CREATE FUNCTION joineando_ando.Existe_usuario (@Usuario nvarchar(255))
RETURNS int
AS
BEGIN
  RETURN (SELECT
    COUNT(nombre_usuario)
  FROM joineando_ando.usuarios
  WHERE nombre_usuario = @Usuario)
END

GO

CREATE FUNCTION joineando_ando.Cantidad_intentos_fallidos (@UnUsuario nvarchar(
255))
RETURNS int
AS
BEGIN
  RETURN (SELECT
    intentos_fallidos
  FROM joineando_ando.usuarios
  WHERE nombre_usuario = @UnUsuario)
END

GO

-- Stored Procedures 
CREATE PROCEDURE joineando_ando.Usuariosporid_seleccion @UsuarioId int
AS
BEGIN
  SELECT
    [usuario_id],
    [nombre],
    [apellido],
    [numero_documento],
    [tipo_documento_id],
    [direccion],
    [telefono],
    [mail],
    [fecha_nacimiento],
    [sexo_id],
    [nombre_usuario],
    [contrasena],
    [habilitado],
    [intentos_fallidos]
  FROM [JOINEANDO_ANDO].[usuarios]
  WHERE [usuario_id] = @UsuarioId
END

GO

CREATE PROCEDURE joineando_ando.Seleccionar_rol @id int
AS
BEGIN
  SELECT
    *
  FROM [JOINEANDO_ANDO].[rol]
  WHERE rol_id = @id
END

GO

CREATE PROCEDURE joineando_ando.Historial_modificacion_paciente @id int
AS
BEGIN
  SELECT
    *
  FROM [JOINEANDO_ANDO].historial_cambios_paciente AS VP
  WHERE vp.afiliadoid = @id
END

GO


CREATE PROCEDURE [JOINEANDO_ANDO].Lista_planes
AS
BEGIN
  SELECT
    plan_id,
    nombre
  FROM joineando_ando.planes
END

GO

CREATE PROCEDURE [JOINEANDO_ANDO].Lista_especialidades
AS
BEGIN
  SELECT
    especialidad_id,
    nombre_especialidad
  FROM joineando_ando.especialidades
END

GO

CREATE PROCEDURE [JOINEANDO_ANDO].Cargar_diagnostico @paciente int,
@diagnostico nvarchar(255),
@enfermedad nvarchar(255),
@consulta int,
@horario datetime
AS
BEGIN
  UPDATE [JOINEANDO_ANDO].consulta_medica
  SET horario_atencion = @horario
  WHERE consulta_medica_id = @consulta

  INSERT INTO [JOINEANDO_ANDO].resultados (enfermedad,
  descripcion,
  consulta_medica_id)
    VALUES (@enfermedad, @diagnostico, @consulta)

  SELECT
    @@IDENTITY
END

GO

CREATE PROCEDURE [JOINEANDO_ANDO].Cargar_sintoma @resultado int,
@sintoma nvarchar(255)
AS
BEGIN
  INSERT INTO [JOINEANDO_ANDO].sintomas (resultado_id,
  descripcion)
    VALUES (@resultado, @sintoma)
END

GO

CREATE PROCEDURE [JOINEANDO_ANDO].Busqueda_medico_resultado @fecha datetime = '',
@numeroTurno int = 0,
@numeroAfiliado int = 0,
@medico int
AS
BEGIN
  SELECT
    t.turno_id AS 'Numero de Turno',
    CONVERT(varchar, t.fecha, 103) AS 'Dia',
    CONVERT(varchar(8), t.horario, 108) AS "Horario",
    (u.nombre + ' ' + u.apellido) AS 'Nombre Paciente',
    p.numero_afiliado AS 'Numero Afiliado',
    p.paciente_id AS 'Id Paciente',
    e.nombre_especialidad AS "Especialidad",
    c.consulta_medica_id
  FROM [JOINEANDO_ANDO].turnos t
  INNER JOIN [JOINEANDO_ANDO].usuarios u
    ON u.usuario_id = t.paciente_id
  INNER JOIN [JOINEANDO_ANDO].pacientes p
    ON p.paciente_id = u.usuario_id
  INNER JOIN [JOINEANDO_ANDO].agendas a
    ON a.agenda_id = t.agenda_id
  INNER JOIN [JOINEANDO_ANDO].medicos m
    ON a.medico_id = m.medico_id
  INNER JOIN [JOINEANDO_ANDO].especialidades e
    ON e.especialidad_id = a.especialidad_id
  INNER JOIN [JOINEANDO_ANDO].usuarios mm
    ON mm.usuario_id = m.medico_id
  INNER JOIN [JOINEANDO_ANDO].consulta_medica c
    ON c.turno_id = t.turno_id
  WHERE ((DATEDIFF(DAY, C.horario_llegada, @fecha) = 0
  AND DAY(C.horario_llegada) = DAY(@fecha))
  OR (@fecha = ''))

  AND ((@numeroAfiliado = 0)
  OR (@numeroAfiliado = p.numero_afiliado))
  AND ((@numeroTurno = 0)
  OR (@numeroTurno = t.turno_id))
  AND m.medico_id = @medico
  AND c.horario_atencion IS NULL
  ORDER BY t.horario ASC
END

GO

CREATE PROCEDURE joineando_ando.Compra_bono @numeroAfiliado int,
@cantidad int,
@fecha datetime
AS
BEGIN
  DECLARE @usr int
  DECLARE @plan int

  SET @usr = (SELECT
    paciente_id
  FROM [JOINEANDO_ANDO].pacientes
  WHERE numero_afiliado = @numeroAfiliado)
  SET @plan = (SELECT
    plan_id
  FROM [JOINEANDO_ANDO].pacientes
  WHERE paciente_id = @usr)

  INSERT INTO [JOINEANDO_ANDO].compra_bonos (paciente_id,
  monto,
  cantidad,
  fecha_compra)
    VALUES (@usr, @cantidad * (SELECT TOP 1 precio_bono_consulta FROM [JOINEANDO_ANDO].planes WHERE plan_id = @plan), @cantidad, @fecha)

  DECLARE @compra int = @@identity
  DECLARE @cnt int = 0;

  WHILE @cnt < @cantidad
  BEGIN
    INSERT INTO [JOINEANDO_ANDO].bonos (plan_id,
    numero_afiliado,
    numero_consulta_medica,
    compra_id)
      VALUES (@plan, @numeroAfiliado, 0, @compra)

    SET @cnt = @cnt + 1;
  END;
END

GO

CREATE PROCEDURE joineando_ando.Precio_bono @nombre nvarchar(255)
AS
BEGIN
  SELECT TOP 1
    precio_bono_consulta
  FROM [JOINEANDO_ANDO].planes
  WHERE nombre = @nombre
END

GO


CREATE PROCEDURE joineando_ando.Baja_paciente @numeroAfiliado int,
@fecha datetime
AS
BEGIN
  DECLARE @paciente int = (SELECT
    paciente_id
  FROM [JOINEANDO_ANDO].pacientes
  WHERE numero_afiliado = @numeroAfiliado)

  UPDATE [JOINEANDO_ANDO].habilitados
  SET fecha_baja = @fecha,
      estado = 0
  WHERE paciente_id = @paciente

  DELETE FROM [JOINEANDO_ANDO].turnos
  WHERE paciente_id = @paciente
    AND asistencia = 0;
END

GO

CREATE PROCEDURE [JOINEANDO_ANDO].Confirmar_presencia @turno int,
@numeroAfiliado int,
@horario datetime
AS
BEGIN
  DECLARE @bono int

  SET @bono = (SELECT TOP 1
    bono_id
  FROM [JOINEANDO_ANDO].bonos
  WHERE numero_afiliado BETWEEN (ROUND(@numeroAfiliado / 100,
  0
  ) *
  100) AND (
  ROUND(@numeroAfiliado / 100, 0) * 100 +
  99)
  AND plan_id = (SELECT TOP 1
    plan_id
  FROM [JOINEANDO_ANDO].pacientes
  WHERE numero_afiliado =
  @numeroAfiliado)
  AND numero_consulta_medica = 0)

  UPDATE [JOINEANDO_ANDO].bonos
  SET numero_consulta_medica = (SELECT
    ISNULL(MAX(numero_consulta_medica)
    ,
    0)
  FROM [JOINEANDO_ANDO].bonos
  WHERE numero_afiliado = @numeroAfiliado)
  + 1
  WHERE bono_id = @bono

  UPDATE [JOINEANDO_ANDO].turnos
  SET asistencia = 1
  WHERE turno_id = @turno

  INSERT INTO [JOINEANDO_ANDO].consulta_medica (turno_id,
  bono_id,
  horario_llegada)
    VALUES (@turno, @bono, @horario)

END

GO

CREATE PROCEDURE [JOINEANDO_ANDO].Listado_especialidades
AS
BEGIN
  SELECT
    nombre_especialidad
  FROM [JOINEANDO_ANDO].especialidades
END

GO

CREATE PROCEDURE [JOINEANDO_ANDO].Bonos_disponibles @numeroAfiliado int
AS
BEGIN
  SELECT
    COUNT(*)
  FROM [JOINEANDO_ANDO].bonos
  WHERE numero_afiliado BETWEEN (ROUND(@numeroAfiliado / 100, 0) * 100)
  AND
  (
  ROUND(@numeroAfiliado / 100, 0) *
  100
  + 99
  )
  AND plan_id = (SELECT TOP 1
    plan_id
  FROM [JOINEANDO_ANDO].pacientes
  WHERE numero_afiliado = @numeroAfiliado)
  AND numero_consulta_medica = 0
END

GO

CREATE PROCEDURE [JOINEANDO_ANDO].Listado_registro_atencion @fecha
datetime, @numeroTurno int = 0,
@numeroAfiliado int = 0,
@medico nvarchar(255) = '',
@especialidad nvarchar(255) = ''
AS
BEGIN
  SELECT
    t.turno_id AS 'Numero de Turno',
    CONVERT(varchar, t.fecha, 103) AS 'Dia',
    CONVERT(varchar(8), t.horario, 108) AS "Horario",
    (u.nombre + ' ' + u.apellido) AS 'Nombre Paciente',
    p.numero_afiliado AS 'Numero Afiliado',
    (mm.nombre + ' ' + mm.apellido) AS 'Nombre Profesional',
    e.nombre_especialidad AS "Especialidad"
  FROM [JOINEANDO_ANDO].turnos t
  INNER JOIN [JOINEANDO_ANDO].usuarios u
    ON u.usuario_id = t.paciente_id
  INNER JOIN [JOINEANDO_ANDO].pacientes p
    ON p.paciente_id = u.usuario_id
  INNER JOIN [JOINEANDO_ANDO].agendas a
    ON a.agenda_id = t.agenda_id
  INNER JOIN [JOINEANDO_ANDO].medicos m
    ON a.medico_id = m.medico_id
  INNER JOIN [JOINEANDO_ANDO].especialidades e
    ON e.especialidad_id = a.especialidad_id
  INNER JOIN [JOINEANDO_ANDO].usuarios mm
    ON mm.usuario_id = m.medico_id
  WHERE ((DATEDIFF(DAY, fecha, @fecha) = 0
  AND DAY(fecha) = DAY(@fecha)))

  AND ((@numeroAfiliado = 0)
  OR (@numeroAfiliado = p.numero_afiliado))
  AND ((@numeroTurno = 0)
  OR (@numeroTurno = t.turno_id))
  AND ((@medico = '')
  OR (mm.nombre LIKE '%' + @medico + '%')
  OR (mm.apellido LIKE '%' + @medico + '%'))
  AND ((@especialidad = '')
  OR (e.nombre_especialidad = @especialidad))
  AND t.asistencia = 0
  ORDER BY t.horario ASC
END

GO

CREATE PROCEDURE joineando_ando.Crear_paciente @nombre nvarchar(255) = '',
@tipo nvarchar(255) = 'DNI',
@numeroDocumento numeric(18, 0) = 0,
@apellido nvarchar(255) = '',
@direccion nvarchar(255) = '',
@sexo nvarchar(255) = '',
@telefono numeric(18, 0) = 0,
@mail nvarchar(50) = '',
@fechaNac datetime = '5/5/5',
@estadoCivil nvarchar(255) = '',
@familiares int = 0,
@raiz int = 0,
@sub int = 0,
@plan nvarchar(255) = '',
@fecha datetime

AS
BEGIN
  DECLARE @returnValue int
  DECLARE @valor int
  DECLARE @iden int

  INSERT INTO [JOINEANDO_ANDO].usuarios (nombre,
  apellido,
  numero_documento,
  tipo_documento_id,
  direccion,
  telefono,
  mail,
  fecha_nacimiento,
  sexo_id,
  nombre_usuario,
  contrasena,
  habilitado,
  intentos_fallidos)
    VALUES (@nombre, @apellido, @numeroDocumento, (SELECT tipo_documento_id FROM [JOINEANDO_ANDO].tipo_documento WHERE tipo = @tipo), @direccion, @telefono, @mail, @fechaNac, (SELECT sexo_id FROM [JOINEANDO_ANDO].sexo WHERE descripcion = @sexo),  cast(@numeroDocumento as nvarchar(50))+'-'+cast((SELECT tipo_documento_id FROM [JOINEANDO_ANDO].tipo_documento WHERE tipo = @tipo) as nvarchar(50)), HASHBYTES('SHA2_256', '123456'), 1, 0)

  SET @iden = @@IDENTITY

  IF @raiz = 0
    SET @valor = @@IDENTITY * 100 + 1
  ELSE
    SET @valor = @raiz + @sub

  SET @returnValue = @valor

  INSERT INTO [JOINEANDO_ANDO].pacientes (paciente_id,
  estado_civil,
  familiares_a_cargo,
  numero_afiliado,
  plan_id)
    VALUES (@@IDENTITY, @estadoCivil, @familiares, @valor, (SELECT plan_id FROM [JOINEANDO_ANDO].planes WHERE nombre = @plan))

  INSERT INTO [JOINEANDO_ANDO].habilitados (paciente_id,
  estado,
  fecha_alta,
  fecha_baja)
    VALUES (@iden, 1, @fecha, NULL)

  INSERT INTO [JOINEANDO_ANDO].usuario_rol
    SELECT
      @iden,
      1

  SELECT
    @returnValue
END

GO

CREATE PROCEDURE joineando_ando.Listar_cambios @numero_afiliado int
AS
BEGIN
  SELECT
    descripcion AS Razon,
    CONVERT(varchar, fecha_mod, 103) AS 'Fecha Modificacion'
  FROM joineando_ando.hist_cambios
  WHERE paciente_id = (SELECT
    paciente_id
  FROM [JOINEANDO_ANDO].pacientes
  WHERE numero_afiliado = @numero_afiliado)
END

GO

CREATE PROCEDURE joineando_ando.Actualizar_paciente @direccion nvarchar(255),
@telefono numeric(18, 0),
@email nvarchar(255),
@estadoCivil nvarchar(255),
@familiaresACargo int,
@plan nvarchar(255),
@numero_afiliado int,
@razon nvarchar(255) = '',
@fecha datetime
AS
BEGIN
  DECLARE @usr int

  SET @usr = (SELECT
    paciente_id
  FROM [JOINEANDO_ANDO].pacientes
  WHERE numero_afiliado = @numero_afiliado)

  UPDATE [JOINEANDO_ANDO].pacientes
  SET estado_civil = @estadoCivil,
      familiares_a_cargo = @familiaresACargo,
      plan_id = (SELECT
        plan_id
      FROM [JOINEANDO_ANDO].planes
      WHERE nombre = @plan)
  WHERE numero_afiliado = @numero_afiliado

  UPDATE [JOINEANDO_ANDO].usuarios
  SET direccion = @direccion,
      telefono = @telefono,
      mail = @email
  WHERE usuario_id = @usr

  IF @razon <> ''
    INSERT INTO [JOINEANDO_ANDO].hist_cambios (paciente_id,
    descripcion,
    fecha_mod)
      VALUES (@usr, @razon, @fecha)
END

GO

CREATE PROCEDURE joineando_ando.Listado_sexo
AS
BEGIN
  SELECT
    descripcion
  FROM [JOINEANDO_ANDO].sexo
END

GO

CREATE PROCEDURE joineando_ando.Listado_planes
AS
BEGIN
  SELECT
    nombre
  FROM [JOINEANDO_ANDO].planes
END

GO

CREATE PROCEDURE joineando_ando.Listado_tipo_documentos
AS
BEGIN
  SELECT
    tipo
  FROM [JOINEANDO_ANDO].tipo_documento
END

GO

CREATE PROCEDURE joineando_ando.Filtro_paciente @nombre nvarchar(255) = NULL,
@apellido nvarchar(255) = NULL,
@tipo nvarchar(255) = NULL,
@numeroDocumento numeric(18, 0) = NULL
AS
BEGIN
  SELECT TOP 100
    pa.numero_afiliado AS
    'Numero de Afiliado',
    us.nombre,
    apellido,
    tipo,
    numero_documento,
    direccion,
    telefono,
    mail AS Email,
    CONVERT(varchar, fecha_nacimiento, 103) AS
    'Fecha Nacimiento',
    ISNULL(sexo.descripcion, 'No especificado') AS
    Sexo,
    ISNULL(pa.estado_civil, 'No especificado') AS
    'Estado Civil',
    familiares_a_cargo
    AS
    'Familiares a cargo',
    pl.nombre AS 'Plan'
  FROM [JOINEANDO_ANDO].[tipo_documento]
  INNER JOIN [JOINEANDO_ANDO].[usuarios] us
    ON us.tipo_documento_id = tipo_documento.tipo_documento_id
  INNER JOIN [JOINEANDO_ANDO].pacientes pa
    ON pa.paciente_id = us.usuario_id
  FULL JOIN [JOINEANDO_ANDO].sexo
    ON sexo.sexo_id = us.sexo_id
  JOIN [JOINEANDO_ANDO].planes pl
    ON pl.plan_id = pa.plan_id
  INNER JOIN [JOINEANDO_ANDO].habilitados ha
    ON pa.paciente_id = ha.paciente_id
  WHERE ha.estado = 1
  AND us.nombre LIKE CASE
    WHEN @nombre IS NOT NULL THEN '%' + @nombre + '%'
    ELSE '%'
  END
  AND us.apellido LIKE CASE
    WHEN @apellido IS NOT NULL THEN '%' + @apellido + '%'
    ELSE '%'
  END
  AND us.numero_documento =
                           CASE
                             WHEN @numeroDocumento IS NULL THEN us.numero_documento
                             ELSE @numeroDocumento
                           END
  AND tipo =
            CASE
              WHEN @tipo IS NULL THEN tipo
              ELSE @tipo
            END
END

GO

CREATE PROCEDURE joineando_ando.Filtro_rol @habilitado bit = NULL,
@idfuncionabilidad int = NULL
AS
BEGIN
  IF (@idfuncionabilidad IS NOT NULL
    AND @habilitado IS NULL)
  BEGIN
    SELECT
      *
    FROM rol R
    WHERE EXISTS (SELECT
      1
    FROM rol_funcionabilidad F
    WHERE F.funcionabilidad_id = @idFuncionabilidad
    AND R.rol_id = F.rol_id)
  END

  IF (@habilitado IS NOT NULL
    AND @idfuncionabilidad IS NULL)
  BEGIN
    SELECT
      *
    FROM rol
    WHERE habilitado = @habilitado
  END

  IF (@habilitado IS NOT NULL
    AND @idfuncionabilidad IS NOT NULL)
  BEGIN
    SELECT
      *
    FROM rol R
    WHERE EXISTS (SELECT
      1
    FROM rol_funcionabilidad F
    WHERE F.funcionabilidad_id = @idFuncionabilidad
    AND R.rol_id = F.rol_id)
    INTERSECT
    SELECT
      *
    FROM rol
    WHERE habilitado = @habilitado
  END

  IF (@idfuncionabilidad IS NULL
    AND @habilitado IS NULL)
    SELECT
      *
    FROM rol
END

GO

CREATE PROCEDURE joineando_ando.Inhabilitar_rol @id int
AS
BEGIN
  UPDATE rol
  SET habilitado = 0
  WHERE rol_id = @id

  
  BEGIN
    DELETE FROM [JOINEANDO_ANDO].usuario_rol
    WHERE rol_id = @id
  END


END

GO

CREATE PROCEDURE joineando_ando.Seleccionar_propiedades_rol @id int
AS
BEGIN
  SELECT
    *
  FROM [rol]
  WHERE rol_id = @id
END

GO

CREATE PROCEDURE joineando_ando.Listarroles
AS
BEGIN
  SELECT
    *
  FROM [rol]
END

GO

CREATE PROCEDURE joineando_ando.Alta_rol @nombre nvarchar(50),
@inHabilitado bit
AS
BEGIN
  INSERT INTO [JOINEANDO_ANDO].rol (nombre,
  habilitado)
  OUTPUT INSERTED.rol_id
    VALUES (@nombre, @inHabilitado)
END

GO

CREATE PROCEDURE joineando_ando.Actualizar_rol @id int,
@nombre nvarchar(50),
@inhabilitado bit
AS
BEGIN
  UPDATE rol
  SET nombre = @nombre,
      habilitado = @inHabilitado
  WHERE rol_id = @id

  IF @inhabilitado = 0
  BEGIN
    DELETE FROM [JOINEANDO_ANDO].usuario_rol
    WHERE rol_id = @id
  END
END

GO

CREATE PROCEDURE joineando_ando.Alta_funcionabiliad_x_rol @idRol int,
@idFuncionabilidad int
AS
BEGIN
  IF NOT EXISTS (SELECT
      *
    FROM rol_funcionabilidad
    WHERE rol_id = @idRol
    AND funcionabilidad_id = @idFuncionabilidad)
  BEGIN
    INSERT INTO [JOINEANDO_ANDO].rol_funcionabilidad (rol_id,
    funcionabilidad_id)
      VALUES (@idRol, @idFuncionabilidad)
  END
END

GO

CREATE PROCEDURE joineando_ando.Baja_funcionablilida_x_rol @idRol int,
@idFuncionabilidad int
AS
BEGIN
  DELETE FROM rol_funcionabilidad
  WHERE rol_id = @idRol
    AND funcionabilidad_id = @idFuncionabilidad
END

GO

CREATE PROCEDURE joineando_ando.Roles_x_usuario @UserId int
AS
BEGIN
  SELECT
    U.rol_id,
    nombre
  FROM joineando_ando.usuario_rol U
  JOIN joineando_ando.rol R
    ON U.rol_id = R.rol_id
    AND R.habilitado = 1
  WHERE U.usuario_id = @Userid
END

GO

CREATE PROCEDURE joineando_ando.Validar_usuario @UserId nvarchar(50),
@Pas varchar(50)
AS
BEGIN
  IF EXISTS (SELECT
      1
    FROM joineando_ando.usuarios
    WHERE nombre_usuario = @UserId
    AND [contrasena] = HASHBYTES('SHA2_256', @Pas)
    AND habilitado = 1)
  BEGIN
    SELECT
      'Ingreso OK' resultado,
      usuario_id
    FROM joineando_ando.usuarios
    WHERE nombre_usuario = @UserId
  END
  ELSE
  BEGIN
    IF EXISTS (SELECT
        usuario_id,
        usuario_id
      FROM joineando_ando.usuarios
      WHERE nombre_usuario = @UserID)
    BEGIN
      IF ((SELECT
          intentos_fallidos
        FROM joineando_ando.usuarios
        WHERE nombre_usuario = @UserID)
        < 3)
      BEGIN
        UPDATE joineando_ando.usuarios
        SET intentos_fallidos = intentos_fallidos + 1
        WHERE nombre_usuario = @UserID

        SELECT
          'usuario o password invalido' resultado,
          0
      END
      ELSE
      BEGIN
        UPDATE joineando_ando.usuarios
        SET habilitado = 0
        WHERE nombre_usuario = @UserID

        SELECT
          'el usuario se encuentra bloqueado',
          -1
      END
    END
    ELSE
    BEGIN
      SELECT
        'usuario o password invalido' resultado,
        0
    END
  END
END

GO

CREATE PROCEDURE joineando_ando.Seleccionar_funcionabilidades_x_rol @id int
AS
BEGIN
  SELECT
    *
  FROM joineando_ando.rol_funcionabilidad R
  JOIN joineando_ando.funcionabilidades F
    ON F.funcionabilidad_id = R.funcionabilidad_id
  WHERE R.rol_id = @id
END

GO

CREATE PROCEDURE joineando_ando.Seleccionar_funcionabilidades
AS
BEGIN
  SELECT
    *
  FROM funcionabilidades
END

GO


CREATE PROCEDURE joineando_ando.Especialidadmedicoposeeagenda @Medico_ID int,
@Especialidad_ID int
AS
  DECLARE @VariableRetorno bit

  BEGIN
    IF EXISTS (SELECT
        *
      FROM agendas
      WHERE medico_id = @Medico_ID
      AND especialidad_id = @Especialidad_ID)
      SET @VariableRetorno = 1
    ELSE
      SET @VariableRetorno = 0

    SELECT
      @VariableRetorno
  END

GO

CREATE PROCEDURE joineando_ando.Especialidadespecialidadesmedico @Medico_id int
AS
BEGIN
  SELECT
    nombre_especialidad,
    especialidades.especialidad_id
  FROM especialidades
  JOIN medico_especialidad
    ON especialidades.especialidad_id =
    medico_especialidad.especialidad_id
  WHERE medico_especialidad.medico_id = @Medico_id
END

GO

CREATE PROCEDURE joineando_ando.Medicotodos
AS
BEGIN
  SELECT
    usuarios.nombre,
    usuarios.apellido,
    medicos.medico_id
  FROM medicos
  JOIN usuarios
    ON medicos.medico_id = usuarios.usuario_id
END

GO

CREATE PROCEDURE joineando_ando.Especialidadtodas
AS
BEGIN
  SELECT
    *
  FROM especialidades
END

GO

CREATE PROCEDURE joineando_ando.Turnoestaocupado @Horario time(7),
@Medico_id int,
@Especialidad_id int,
@Dia_seleccionado date,
@Dia_id int
AS
  DECLARE @ID_AGENDA int
  BEGIN


    SET @ID_AGENDA = (SELECT
      agendas.agenda_id
    FROM JOINEANDO_ANDO.agendas
    JOIN JOINEANDO_ANDO.dias_atencion
      ON dias_atencion.agenda_id = agendas.agenda_id
    WHERE @Dia_seleccionado BETWEEN agendas.dia_inicio AND AGENDAS.dia_fin
    AND agendas.medico_id = @Medico_id
    AND agendas.especialidad_id = @Especialidad_id
    AND @Dia_id = dias_atencion.dia_id
    AND @Horario BETWEEN dias_atencion.inicio_horario AND dias_atencion.fin_horario)

    IF @ID_AGENDA IS NOT NULL
      --ATIENDE ESE DIA Y HORARIO

      IF EXISTS (SELECT
          *
        FROM JOINEANDO_ANDO.turnos
        WHERE turnos.agenda_id = @ID_AGENDA
        AND turnos.fecha = @Dia_seleccionado
        AND turnos.horario = @Horario
        AND turnos.cancelacion_id IS NULL)
        --Ese horario ya está tomado
        SELECT
          1
      ELSE
        --Ese horario está disponible
        SELECT
          0
    ELSE
      --NO ATIENDE ESE DIA Y HORARIO
      SELECT
        1
  END
GO

CREATE PROCEDURE joineando_ando.Personaturnos @Nombre nvarchar(30) =
NULL,
@Apellido nvarchar(30) =
NULL,
@Dia date = NULL,
@Especialidad_id int = NULL,
@Persona_id int,
@FechaHoy date
AS
BEGIN
  SELECT
    usuarios.nombre AS Nombre,
    usuarios.apellido AS Apellido,
    especialidades.nombre_especialidad AS Especialidad,
    turnos.fecha AS Dia,
    turnos.horario AS Horario,
    turnos.turno_id AS IDTurno
  FROM turnos
  JOIN agendas
    ON agendas.agenda_id = turnos.agenda_id
  JOIN usuarios
    ON usuarios.usuario_id = agendas.medico_id
  JOIN especialidades
    ON especialidades.especialidad_id = agendas.especialidad_id
  WHERE (@Nombre IS NULL
  OR usuarios.nombre LIKE '%' + @Nombre + '%')
  AND (@Apellido IS NULL
  OR usuarios.apellido LIKE '%' + @Apellido + '%')
  AND (@Dia IS NULL
  OR turnos.fecha = @Dia)
  AND (turnos.fecha >= @FechaHoy)
  AND (@Especialidad_id IS NULL
  OR especialidades.especialidad_id = @Especialidad_id)
  AND (paciente_id = @Persona_id)
  AND (turnos.cancelacion_id IS NULL)
  AND (asistencia = 0)
END

GO

CREATE PROCEDURE joineando_ando.Tipocancelaciontodos
AS
BEGIN
  SELECT
    *
  FROM tipo_cancelaciones
END

GO

CREATE PROCEDURE joineando_ando.Cancelacioneliminarturnoafiliado @Turno_id
int,
@Tipo_Cancelacion_id int,
@Descripcion nvarchar(50)
AS
BEGIN
  INSERT INTO cancelaciones (tipo,
  descripcion)
    VALUES (@Tipo_Cancelacion_id, @Descripcion)

  UPDATE turnos
  SET cancelacion_id = @@IDENTITY
  WHERE turnos.turno_id = @Turno_id
END

GO

CREATE PROCEDURE joineando_ando.Cancelacioneliminarturnoprofesional @Dia
date,
@Tipo_Cancelacion_id int,
@Descripcion nvarchar(50),
@Medico_id int
AS
BEGIN
  DECLARE @Cancelacion_id int

  IF EXISTS (SELECT
      turno_id
    FROM turnos
    JOIN agendas
      ON agendas.agenda_id = turnos.agenda_id
    WHERE agendas.medico_id = @Medico_id
    AND turnos.fecha = @Dia
    AND turnos.cancelacion_id IS NULL)
  BEGIN
    INSERT INTO cancelaciones (tipo,
    descripcion)
      VALUES (@Tipo_Cancelacion_id, @Descripcion)

    SET @Cancelacion_id = @@IDENTITY

    UPDATE turnos
    SET cancelacion_id = @Cancelacion_id
    WHERE turno_id IN (SELECT
      turno_id
    FROM turnos
    JOIN agendas
      ON agendas.agenda_id = turnos.agenda_id
    WHERE agendas.medico_id = @Medico_id
    AND turnos.fecha = @Dia
    AND turnos.cancelacion_id IS NULL)
  END
END

GO

CREATE PROCEDURE joineando_ando.Turnoinsertarnuevo @Paciente_id int,
@Fecha date,
@Horario time(7),
@Medico_id int,
@Especialidad_id int,
@Dia_id int
AS
BEGIN
  INSERT INTO turnos (paciente_id,
  fecha,
  horario,
  asistencia,
  agenda_id)
    VALUES (@Paciente_id, @Fecha, @Horario, 0, (SELECT agendas.agenda_id FROM agendas JOIN dias_atencion ON dias_atencion.agenda_id = agendas.agenda_id WHERE agendas.medico_id = @Medico_id AND agendas.especialidad_id = @Especialidad_id AND @Fecha BETWEEN Agendas.dia_inicio AND Agendas.dia_fin AND @Horario BETWEEN dias_atencion.inicio_horario AND dias_atencion.fin_horario AND @Dia_id = dias_atencion.dia_id))
END

GO

CREATE TYPE JOINEANDO_ANDO.DIAS_SEMANA_AGENDA
AS TABLE (
ID int,
INICIO time(7),
FIN time(7)
)
GO

CREATE PROCEDURE joineando_ando.Agendainsertarnueva @Medico_id int,
@Especialidad_id int,
@Dia_inicio date,
@Dia_Fin date,
@Dias_Atencion AS JOINEANDO_ANDO.DIAS_SEMANA_AGENDA READONLY
AS
  DECLARE @ACTUAL date
  DECLARE @INICIO_AGENDA date
  DECLARE @FIN_AGENDA date
  DECLARE @ID_AGENDA int
  DECLARE @DIA_DIA int
  DECLARE @INICIO_HORARIO_DIA time(7)
  DECLARE @FIN_HORARIO_DIA time(7)
  DECLARE @MINUTOS_TRABAJADOS_DIA int
  DECLARE @MINUTOS_TRABAJADOS int
  DECLARE @ME_PASE bit
  DECLARE @ID_AGENDA_NUEVA int
  BEGIN

    BEGIN TRANSACTION NUEVA_AGENDA

      INSERT INTO agendas
        VALUES (@Medico_id, @Especialidad_id, @Dia_inicio, @Dia_Fin)

      SET @ID_AGENDA_NUEVA = @@IDENTITY

      INSERT INTO dias_atencion
        SELECT
          @ID_AGENDA_NUEVA,
          ID,
          INICIO,
          FIN
        FROM @Dias_Atencion

      CREATE TABLE #DIAS (
        FECHA date,
        DIA int,
        MINUTOS int
      )

      SET @ACTUAL = @Dia_inicio

      --Pongo los horarios en cero del calendario
      WHILE @ACTUAL <= @Dia_Fin
      BEGIN

        INSERT INTO #DIAS (FECHA, MINUTOS, DIA)
          VALUES (@ACTUAL, 0, CASE DATEPART(DW, @ACTUAL) WHEN 1 THEN 7 WHEN 2 THEN 1 WHEN 3 THEN 2 WHEN 4 THEN 3 WHEN 5 THEN 4 WHEN 6 THEN 5 ELSE 6 END)

        SET @ACTUAL = DATEADD(DD, 1, @ACTUAL)
      END

      --Cargo las horas día por día
      DECLARE CURSOR_AGENDAS CURSOR FOR
      SELECT
        agenda_id,
        dia_inicio,
        dia_fin
      FROM AGENDAS
      WHERE EXISTS (SELECT
        *
      FROM #DIAS
      WHERE FECHA BETWEEN AGENDAS.dia_inicio AND AGENDAS.dia_fin)
      AND agendas.medico_id = @Medico_id

      OPEN CURSOR_AGENDAS

      FETCH NEXT FROM CURSOR_AGENDAS
      INTO @ID_AGENDA, @INICIO_AGENDA, @FIN_AGENDA

      WHILE @@FETCH_STATUS = 0
      BEGIN

        DECLARE CURSOR_DIAS CURSOR FOR
        SELECT
          dia_id,
          inicio_horario,
          fin_horario
        FROM dias_atencion
        WHERE dias_atencion.agenda_id = @ID_AGENDA

        OPEN CURSOR_DIAS

        FETCH NEXT FROM CURSOR_DIAS
        INTO @DIA_DIA, @INICIO_HORARIO_DIA, @FIN_HORARIO_DIA

        WHILE @@FETCH_STATUS = 0
        BEGIN

          UPDATE #DIAS
          SET MINUTOS = MINUTOS + DATEDIFF(mi, CAST(@INICIO_HORARIO_DIA AS datetime), CAST(@FIN_HORARIO_DIA AS datetime))
          WHERE #DIAS.DIA = @DIA_DIA
          AND #DIAS.FECHA BETWEEN @INICIO_AGENDA AND @FIN_AGENDA

          FETCH NEXT FROM CURSOR_DIAS
          INTO @DIA_DIA, @INICIO_HORARIO_DIA, @FIN_HORARIO_DIA
        END

        CLOSE CURSOR_DIAS
        DEALLOCATE CURSOR_DIAS

        FETCH NEXT FROM CURSOR_AGENDAS
        INTO @ID_AGENDA, @INICIO_AGENDA, @FIN_AGENDA
      END

      CLOSE CURSOR_AGENDAS
      DEALLOCATE CURSOR_AGENDAS

      --Calendario cargado

      SET @ME_PASE = 0
      SET @MINUTOS_TRABAJADOS = 0

      DECLARE CURSOR_CALENDARIO CURSOR FOR
      SELECT
        DIA,
        MINUTOS
      FROM #DIAS

      OPEN CURSOR_CALENDARIO

      FETCH NEXT FROM CURSOR_CALENDARIO
      INTO @DIA_DIA, @MINUTOS_TRABAJADOS_DIA

      WHILE @@FETCH_STATUS = 0
      BEGIN

        SET @MINUTOS_TRABAJADOS = @MINUTOS_TRABAJADOS + @MINUTOS_TRABAJADOS_DIA

        IF @DIA_DIA = 7
        BEGIN

          IF @MINUTOS_TRABAJADOS > 2880
          BEGIN
            SET @ME_PASE = 1
          END

          SET @MINUTOS_TRABAJADOS = 0
        END

        FETCH NEXT FROM CURSOR_CALENDARIO
        INTO @DIA_DIA, @MINUTOS_TRABAJADOS_DIA
      END

      IF @ME_PASE = 1
      BEGIN
        ROLLBACK TRANSACTION NUEVA_AGENDA
        SELECT
          0
      END
      ELSE
      BEGIN
      COMMIT TRANSACTION NUEVA_AGENDA
      SELECT
        1
    END

    DROP TABLE #DIAS
  END
GO

CREATE PROCEDURE joineando_ando.Medicoturnos @id_medico int,
@Dia date,
@FechaHoy date
AS
BEGIN
  SELECT
    usuarios.nombre AS Nombre,
    turnos.fecha AS Fecha,
    turnos.horario AS Horario
  FROM turnos
  JOIN agendas
    ON agendas.agenda_id = turnos.agenda_id
  JOIN usuarios
    ON usuarios.usuario_id = agendas.medico_id
  WHERE (@Dia IS NULL
  OR turnos.fecha = @Dia)
  AND (turnos.fecha >= @FechaHoy)
  AND (turnos.cancelacion_id IS NULL)
  AND (asistencia = 0)
END

GO

CREATE FUNCTION joineando_ando.Colisionanrangos (@Inicio_Horario time(7),
@Fin_Horario time(7),
@Inicio_Rango time(7),
@Fin_Rango time(7))
RETURNS bit
AS
BEGIN
  DECLARE @colisiona bit

  IF ((@Inicio_Horario >= @Inicio_Rango
    AND @Inicio_Horario < @Fin_Rango)
    OR (@Fin_Horario > @Inicio_Rango
    AND @Fin_Horario <= @Fin_Rango)
    OR (@Inicio_Horario < @Inicio_Rango
    AND @Fin_Horario > @Fin_Rango))
  BEGIN
    RETURN 1
  END

  RETURN 0
END

GO

CREATE PROCEDURE joineando_ando.Agendarangocolisionaconagendaexistente @Medico_id int,
@Dia_id int,
@Inicio_Horario time(7),
@Fin_Horario time(7),
@Inicio_Dia date,
@Fin_Dia date
AS
  DECLARE @Actual date
  BEGIN

    CREATE TABLE #T (
      FECHA date
    )

    SET @Actual = @Inicio_Dia

    WHILE @Actual <= @Fin_Dia
    BEGIN
      INSERT INTO #T
        VALUES (@Actual)
      SET @Actual = DATEADD(DD, 1, @Actual)
    END

    SELECT
      CAST(COUNT(*) AS bit)
    FROM agendas
    JOIN dias_atencion
      ON dias_atencion.agenda_id = agendas.agenda_id
      AND EXISTS (SELECT
        FECHA
      FROM #T
      WHERE FECHA BETWEEN agendas.dia_inicio AND agendas.dia_fin)
    WHERE agendas.medico_id = @Medico_id
    AND dias_atencion.dia_id = @Dia_id
    AND joineando_ando.Colisionanrangos(@Inicio_Horario, @Fin_Horario,
    dias_atencion.inicio_horario, dias_atencion.fin_horario) = 1

    DROP TABLE #T
  END

GO

--Listados Estadísticos 
CREATE PROCEDURE joineando_ando.Listadoespecialidadesconmascancelaciones @anio
int,
@semestre int
AS
BEGIN
  SET LANGUAGE spanish

  DECLARE @Out TABLE (
    "mes" nvarchar(255),
    "posicion mensual" int,
    "nombre especialidad" nvarchar(255),
    "cantidad de cancelaciones" int
  );
  DECLARE @end int = 7 + 6 * (@semestre - 1)
  DECLARE @start int = 1 + 6 * (@semestre - 1)

  WHILE (@start < @end)
  BEGIN
    INSERT INTO @Out
      SELECT TOP 5
        DATENAME(mm, DATEADD(mm, MONTH(t.fecha), -1)),
        ROW_NUMBER()
        OVER (
        ORDER BY COUNT(*) DESC),
        e.nombre_especialidad,
        COUNT(*)
      FROM [JOINEANDO_ANDO].cancelaciones c
      INNER JOIN [JOINEANDO_ANDO].turnos t
        ON t.cancelacion_id = c.cancelacion_id
      INNER JOIN [JOINEANDO_ANDO].agendas a
        ON a.agenda_id = t.agenda_id
      INNER JOIN [JOINEANDO_ANDO].especialidades e
        ON e.especialidad_id = a.especialidad_id
      WHERE YEAR(t.fecha) = @anio
      GROUP BY e.nombre_especialidad,
               MONTH(t.fecha)
      HAVING MONTH(t.fecha) = @start

    SET @start = @start + 1;
  END

  SELECT
    *
  FROM @out
END

GO

CREATE PROCEDURE joineando_ando.Listadoprofesionalesmasconsultadosporplan @semestre int,
@anio int,
@planid int
AS
BEGIN
  SET LANGUAGE spanish

  DECLARE @Out TABLE (
    "mes" nvarchar(255),
    "posicion mensual" int,
    "medico" nvarchar(255),
    "nombre especialidad" nvarchar(255),
    "cantidad de consultas" int
  );
  DECLARE @end int = 7 + 6 * (@semestre - 1)
  DECLARE @start int = 1 + 6 * (@semestre - 1)

  WHILE (@start < @end)
  BEGIN
    INSERT INTO @Out
      SELECT TOP 5
        DATENAME(mm, DATEADD(mm, MONTH(t.fecha), -1)),
        ROW_NUMBER()
        OVER (
        ORDER BY COUNT(*) DESC),
        u.nombre + ' ' + u.apellido,
        e.nombre_especialidad,
        COUNT(*)
      FROM [JOINEANDO_ANDO].turnos t
      INNER JOIN [JOINEANDO_ANDO].agendas a
        ON a.agenda_id = t.agenda_id
      INNER JOIN [JOINEANDO_ANDO].pacientes p
        ON p.paciente_id = t.paciente_id
      INNER JOIN [JOINEANDO_ANDO].especialidades e
        ON e.especialidad_id = a.especialidad_id
      INNER JOIN [JOINEANDO_ANDO].medicos m
        ON m.medico_id = a.medico_id
      INNER JOIN [JOINEANDO_ANDO].usuarios u
        ON u.usuario_id = m.medico_id
      WHERE p.plan_id = @planid
      AND t.asistencia = 1
      AND YEAR(t.fecha) = @anio
      GROUP BY u.nombre + ' ' + u.apellido,
               MONTH(t.fecha),
               e.nombre_especialidad
      HAVING MONTH(t.fecha) = @start

    SET @start = @start + 1;
  END

  SELECT
    *
  FROM @out
END

GO

CREATE PROCEDURE joineando_ando.Listadoprofesionalesconmenoshorastrabajadas @semestre int,
@anio int,
@planid int,
@especialidadid int
AS
BEGIN
  SET LANGUAGE spanish

  DECLARE @Out TABLE (
    "mes" nvarchar(255),
    "posicion mensual" int,
    "medico" nvarchar(255),
    "nombre especialidad" nvarchar(255),
    "cantidad de consultas" int
  );
  DECLARE @end int = 7 + 6 * (@semestre - 1)
  DECLARE @start int = 1 + 6 * (@semestre - 1)

  WHILE (@start < @end)
  BEGIN
    INSERT INTO @Out
      SELECT TOP 5
        DATENAME(mm, DATEADD(mm, MONTH(t.fecha), -1)),
        ROW_NUMBER()
        OVER (
        ORDER BY COUNT(*) ASC),
        u.nombre + ' ' + u.apellido,
        e.nombre_especialidad,
        COUNT(*)
      FROM [JOINEANDO_ANDO].turnos t
      JOIN [JOINEANDO_ANDO].agendas a
        ON a.agenda_id = t.agenda_id
      JOIN [JOINEANDO_ANDO].especialidades e
        ON e.especialidad_id = a.especialidad_id
      JOIN [JOINEANDO_ANDO].medicos m
        ON m.medico_id = a.medico_id
      JOIN [JOINEANDO_ANDO].usuarios u
        ON u.usuario_id = m.medico_id
      JOIN [JOINEANDO_ANDO].pacientes p
        ON p.paciente_id = t.paciente_id
      JOIN [JOINEANDO_ANDO].planes pl
        ON pl.plan_id = p.plan_id
      WHERE pl.plan_id = @planid
      AND e.especialidad_id = @especialidadid
      AND YEAR(t.fecha) = @anio
      AND t.asistencia = 1
      AND YEAR(t.fecha) = @anio
      GROUP BY u.nombre + ' ' + u.apellido,
               MONTH(t.fecha),
               e.nombre_especialidad
      HAVING MONTH(t.fecha) = @start

    SET @start = @start + 1;
  END

  SELECT
    *
  FROM @out
END

GO

CREATE PROCEDURE joineando_ando.Listadoafiliadosconmayorbonoscomprados @semestre int,
@anio int
AS
BEGIN
  SET LANGUAGE spanish

  DECLARE @Out TABLE (
    "mes" nvarchar(255),
    "posicion mensual" int,
    "afiliado" nvarchar(255),
    "numero de afiliado" int,
    "cantidad de bonos comprados" int
  );
  DECLARE @end int = 7 + 6 * (@semestre - 1)
  DECLARE @start int = 1 + 6 * (@semestre - 1)

  WHILE (@start < @end)
  BEGIN
    INSERT INTO @Out
      SELECT TOP 5
        DATENAME(mm, DATEADD(mm, MONTH(cb.fecha_compra), -1)),
        ROW_NUMBER()
        OVER (
        ORDER BY SUM(cb.cantidad) DESC),
        u.nombre + ' ' + u.apellido,
        pa.numero_afiliado,
        SUM(cb.cantidad)
      FROM [JOINEANDO_ANDO].compra_bonos cb
      JOIN [JOINEANDO_ANDO].usuarios u
        ON u.usuario_id = cb.paciente_id
      JOIN [JOINEANDO_ANDO].pacientes pa
        ON pa.paciente_id = u.usuario_id
      WHERE YEAR(cb.fecha_compra) = @anio
      GROUP BY u.nombre + ' ' + u.apellido,
               MONTH(cb.fecha_compra),
               pa.numero_afiliado
      HAVING MONTH(cb.fecha_compra) = @start

    SET @start = @start + 1;
  END

  SELECT
    mes,
    [posicion mensual],
    afiliado,
    [numero de afiliado],
    joineando_ando.Cantidadfamilia([numero de afiliado]) AS
    'Tamano grupo familiar',
    [cantidad de bonos comprados]
  FROM @out
END

GO

CREATE PROCEDURE joineando_ando.Listadoespecialidadesconmasbonosutilizados @semestre int,
@anio int
AS
BEGIN
  SET LANGUAGE spanish

  DECLARE @Out TABLE (
    "mes" nvarchar(255),
    "posicion mensual" int,
    "nombre especialidad" nvarchar(255),
    "cantidad de consultas" int
  );
  DECLARE @end int = 7 + 6 * (@semestre - 1)
  DECLARE @start int = 1 + 6 * (@semestre - 1)

  WHILE (@start < @end)
  BEGIN
    INSERT INTO @Out
      SELECT TOP 5
        DATENAME(mm, DATEADD(mm, MONTH(t.fecha), -1)),
        ROW_NUMBER()
        OVER (
        ORDER BY COUNT(*) DESC),
        e.nombre_especialidad,
        COUNT(*)
      FROM [JOINEANDO_ANDO].turnos t
      INNER JOIN [JOINEANDO_ANDO].agendas a
        ON a.agenda_id = t.agenda_id
      INNER JOIN [JOINEANDO_ANDO].especialidades e
        ON e.especialidad_id = a.especialidad_id
      WHERE t.asistencia = 1
      AND YEAR(t.fecha) = @anio
      GROUP BY e.nombre_especialidad,
               MONTH(t.fecha)
      HAVING MONTH(t.fecha) = @start

    SET @start = @start + 1;
  END

  SELECT
    *
  FROM @out
END

GO

--Migracion de Datos 
INSERT INTO [JOINEANDO_ANDO].tipo_cancelaciones (descripcion,
tipo_cancelacion_id)
  VALUES ('Enfermedad', 1)

INSERT INTO [JOINEANDO_ANDO].tipo_cancelaciones (descripcion,
tipo_cancelacion_id)
  VALUES ('Reprogramacion del turno', 2)

INSERT INTO [JOINEANDO_ANDO].tipo_cancelaciones (descripcion,
tipo_cancelacion_id)
  VALUES ('Razones personales', 3)

INSERT INTO [JOINEANDO_ANDO].tipo_cancelaciones (descripcion,
tipo_cancelacion_id)
  VALUES ('Vacaciones / Feriado', 4)

INSERT INTO [JOINEANDO_ANDO].funcionabilidades
  SELECT
    'Alta Rol'
  UNION ALL
  SELECT
    'Modificacion Rol'
  UNION ALL
  SELECT
    'Baja Rol'
  UNION ALL
  SELECT
    'Alta Afiliado'
  UNION ALL
  SELECT
    'Modificacion Afiliado'
  UNION ALL
  SELECT
    'Baja Afiliado'
  UNION ALL
  SELECT
    'Alta Agenda Profesional'
  UNION ALL
  SELECT
    'Compra bonos'
  UNION ALL
  SELECT
    'Pedido turnos'
  UNION ALL
  SELECT
    'Cancerlar turnos'
  UNION ALL
  SELECT
    'Registo de llegada'
  UNION ALL
  SELECT
    'Registo de resultados'
  UNION ALL
  SELECT
    'Listado Estadistico'

GO

INSERT INTO [JOINEANDO_ANDO].rol
  SELECT
    'Afiliado',
    1
  UNION ALL
  SELECT
    'Administrativo',
    1
  UNION ALL
  SELECT
    'Profesional',
    1
  UNION ALL
  SELECT
    'Admin',
    1

GO

INSERT INTO [JOINEANDO_ANDO].rol_funcionabilidad
  SELECT
    4,
    1
  UNION ALL
  SELECT
    4,
    2
  UNION ALL
  SELECT
    4,
    3
  UNION ALL
  SELECT
    4,
    4
  UNION ALL
  SELECT
    4,
    5
  UNION ALL
  SELECT
    4,
    6
  UNION ALL
  SELECT
    4,
    8
  UNION ALL
  SELECT
    4,
    11
  UNION ALL
  SELECT
    4,
    13
  UNION ALL
  SELECT
    3,
    10
  UNION ALL
  SELECT
    3,
    12
  UNION ALL
  SELECT
    3,
    7
  UNION ALL
  SELECT
    1,
    9
  UNION ALL
  SELECT
    1,
    10
  UNION ALL
  SELECT
    2,
    4
  UNION ALL
  SELECT
    2,
    5
  UNION ALL
  SELECT
    2,
    6
  UNION ALL
  SELECT
    2,
    8
  UNION ALL
  SELECT
    2,
    11
  UNION ALL
  SELECT
    2,
    13

GO

INSERT INTO [JOINEANDO_ANDO].sexo
  SELECT
    'Masculino'
  UNION ALL
  SELECT
    'Femenino'
  UNION ALL
  SELECT
    'No especificado'

GO

INSERT INTO [JOINEANDO_ANDO].dias_semana
  SELECT
    'Lunes'
  UNION ALL
  SELECT
    'Martes'
  UNION ALL
  SELECT
    'Miercoles'
  UNION ALL
  SELECT
    'Jueves'
  UNION ALL
  SELECT
    'Viernes'
  UNION ALL
  SELECT
    'Sabado'

GO

INSERT INTO [JOINEANDO_ANDO].tipo_documento
  SELECT
    'DNI'
  UNION ALL
  SELECT
    'Libreta Civica'
  UNION ALL
  SELECT
    'Pasaporte'
  UNION ALL
  SELECT
    'Otro'

GO

INSERT INTO [JOINEANDO_ANDO].tipo_especialidad
  SELECT DISTINCT
    [tipo_especialidad_codigo],
    [tipo_especialidad_descripcion]
  FROM [gd_esquema].maestra
  WHERE tipo_especialidad_codigo IS NOT NULL

GO

INSERT INTO [JOINEANDO_ANDO].especialidades
  SELECT DISTINCT
    [especialidad_codigo],
    [especialidad_descripcion],
    [tipo_especialidad_codigo]
  FROM [gd_esquema].maestra
  WHERE especialidad_codigo IS NOT NULL

GO

INSERT INTO [JOINEANDO_ANDO].planes
  SELECT DISTINCT
    [plan_med_codigo],
    [plan_med_descripcion],
    [plan_med_precio_bono_consulta],
    [plan_med_precio_bono_farmacia]
  FROM [gd_esquema].maestra
  WHERE plan_med_codigo IS NOT NULL

GO

--Medicos 
INSERT INTO [JOINEANDO_ANDO].usuarios
  SELECT DISTINCT
    [medico_nombre],
    [medico_apellido],
    [medico_dni],
    1,
    [medico_direccion],
    [medico_telefono],
    [medico_mail],
    [medico_fecha_nac],
    NULL,
    cast([medico_dni] as nvarchar(50)) + '-1',
    HASHBYTES('SHA2_256', '123456'),
    1,
    0
  FROM [gd_esquema].maestra
  WHERE medico_nombre IS NOT NULL

GO

INSERT INTO [JOINEANDO_ANDO].medicos
  SELECT DISTINCT
    U.usuario_id,
    555
  FROM joineando_ando.usuarios AS U
  INNER JOIN gd_esquema.maestra AS M
    ON (U.nombre = M.medico_nombre)
    AND (u.apellido = M.medico_apellido)
    AND (u.numero_documento = m.medico_dni)

GO

INSERT INTO [JOINEANDO_ANDO].medico_especialidad
  SELECT DISTINCT
    u.usuario_id,
    E.especialidad_id
  FROM [JOINEANDO_ANDO].especialidades AS E,
       [JOINEANDO_ANDO].usuarios AS U
       INNER JOIN [gd_esquema].maestra AS M
         ON (u.nombre = m.medico_nombre)
         AND (U.apellido = m.medico_apellido)
  WHERE (E.especialidad_id = M.especialidad_codigo)

GO

INSERT INTO [JOINEANDO_ANDO].agendas
  SELECT DISTINCT
    e.medico_id,
    e.especialidad_id,
    '2015-01-01',
    '2015-12-30'
  FROM gd_esquema.maestra ma,
       joineando_ando.usuarios u,
       joineando_ando.medico_especialidad e
  WHERE ma.medico_dni = u.numero_documento
  AND u.usuario_id = e.medico_id

GO

-- Pacientes 
INSERT INTO [JOINEANDO_ANDO].usuarios
  SELECT DISTINCT
    [paciente_nombre],
    [paciente_apellido],
    [paciente_dni],
    1,
    [paciente_direccion],
    [paciente_telefono],
    [paciente_mail],
    [paciente_fecha_nac],
    NULL,
    cast([paciente_dni] as nvarchar(50)) + '-1' ,
    HASHBYTES('SHA2_256', '123456'),
    1,
    0
  FROM [gd_esquema].maestra
  WHERE paciente_nombre IS NOT NULL

GO

INSERT INTO [JOINEANDO_ANDO].pacientes
  SELECT DISTINCT
    U.usuario_id,
    NULL,
    0,
    ((U.usuario_id) * 100 + 1),
    M.plan_med_codigo
  FROM (joineando_ando.usuarios AS U
  INNER JOIN gd_esquema.maestra AS M
    ON (U.nombre = M.paciente_nombre)
    AND (U.apellido = M.paciente_apellido)
    AND (U.numero_documento = M.paciente_dni))

GO

INSERT INTO [JOINEANDO_ANDO].habilitados
  SELECT DISTINCT
    P.paciente_id,
    1,
    GETDATE(),
    NULL
  FROM joineando_ando.pacientes P

GO

SET IDENTITY_INSERT joineando_ando.turnos ON

GO

INSERT INTO [JOINEANDO_ANDO].turnos (turno_id,
paciente_id,
agenda_id,
fecha,
horario,
asistencia)
  SELECT DISTINCT
    M.turno_numero,
    u.usuario_id,
    a.agenda_id,

    Format(turno_fecha, 'yyyy-MM-dd'),

    RIGHT(turno_fecha, 7),
    1
  FROM gd_esquema.maestra m
  INNER JOIN joineando_ando.usuarios U
    ON m.paciente_dni = u.numero_documento
  INNER JOIN joineando_ando.usuarios u2
    ON u2.numero_documento = m.medico_dni
  INNER JOIN joineando_ando.medicos med
    ON u2.usuario_id = med.medico_id
  INNER JOIN joineando_ando.agendas a
    ON med.medico_id = a.medico_id
  INNER JOIN joineando_ando.especialidades es
    ON es.especialidad_id = a.especialidad_id
  WHERE (m.turno_numero IS NOT NULL)
  AND (m.bono_consulta_numero IS NULL)
  AND m.especialidad_descripcion = es.nombre_especialidad

GO

SET IDENTITY_INSERT joineando_ando.turnos OFF

GO

INSERT INTO [JOINEANDO_ANDO].hist_cambios
  SELECT DISTINCT
    paciente_id,
    'Migracion de usuario',
    GETDATE()
  FROM joineando_ando.pacientes

GO

INSERT INTO [JOINEANDO_ANDO].compra_bonos
  SELECT DISTINCT
    u.usuario_id,
    Pl.precio_bono_consulta,
    1,
    M.compra_bono_fecha
  FROM gd_esquema.maestra M,
       joineando_ando.planes Pl,
       joineando_ando.usuarios u
  WHERE M.plan_med_codigo = Pl.plan_id
  AND M.compra_bono_fecha IS NOT NULL
  AND m.paciente_dni = u.numero_documento

GO

SET IDENTITY_INSERT joineando_ando.bonos ON

GO

INSERT INTO [JOINEANDO_ANDO].bonos (bono_id,
plan_id,
numero_consulta_medica,
fecha_impresion,
numero_afiliado,
compra_id)
  SELECT DISTINCT
    M.bono_consulta_numero,
    Pl.plan_id,
    0,
    M.bono_consulta_fecha_impresion,
    (u.usuario_id * 100) + 1,
    c.compra_id
  FROM gd_esquema.maestra M
  INNER JOIN joineando_ando.usuarios u
    ON m.paciente_dni = u.numero_documento
  INNER JOIN joineando_ando.pacientes pa
    ON u.usuario_id = pa.paciente_id
  INNER JOIN joineando_ando.planes pl
    ON pa.plan_id = pl.plan_id
  INNER JOIN joineando_ando.compra_bonos c
    ON (pa.paciente_id = c.paciente_id
    AND c.fecha_compra = m.compra_bono_fecha)
  WHERE m.bono_consulta_numero IS NOT NULL

GO

SET IDENTITY_INSERT joineando_ando.bonos OFF

GO

INSERT INTO [JOINEANDO_ANDO].consulta_medica (turno_id,
bono_id,
horario_llegada,
horario_atencion)
  SELECT
    m.turno_numero,
    M.bono_consulta_numero,
    (CONVERT(datetime, m.turno_fecha, 108)),
    (CONVERT(datetime, m.turno_fecha, 108))
  FROM gd_esquema.maestra M
  WHERE m.turno_numero IS NOT NULL
  AND m.bono_consulta_numero IS NOT NULL

GO

INSERT INTO joineando_ando.resultados (consulta_medica_id,
enfermedad)
  SELECT
    cm.consulta_medica_id,
    m.consulta_enfermedades
  FROM gd_esquema.maestra m
  INNER JOIN joineando_ando.consulta_medica cm
    ON m.turno_numero = cm.turno_id
  WHERE (m.turno_numero IS NOT NULL)
  AND (m.bono_consulta_numero IS NOT NULL)

GO

INSERT INTO joineando_ando.sintomas (resultado_id,
descripcion)
  SELECT
    r.resultado_id,
    m.consulta_sintomas
  FROM joineando_ando.resultados r
  INNER JOIN joineando_ando.consulta_medica cm
    ON r.consulta_medica_id = cm.consulta_medica_id
  INNER JOIN gd_esquema.maestra m
    ON cm.turno_id = m.turno_numero

GO

INSERT INTO [JOINEANDO_ANDO].usuario_rol
  SELECT
    usuario_id,
    2
  FROM joineando_ando.usuarios
  WHERE usuarios.nombre_usuario = 'Admin'

GO

INSERT INTO [JOINEANDO_ANDO].usuario_rol
  SELECT
    paciente_id,
    1
  FROM [JOINEANDO_ANDO].pacientes

GO

INSERT INTO [JOINEANDO_ANDO].usuario_rol
  SELECT
    medico_id,
    3
  FROM [JOINEANDO_ANDO].medicos

GO

-- Constraints 
ALTER TABLE [JOINEANDO_ANDO].[agendas]
ADD CONSTRAINT [PK_Agendas] PRIMARY KEY CLUSTERED ([agenda_id] ASC) WITH (
PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[bonos]
ADD CONSTRAINT [PK_Bonos] PRIMARY KEY CLUSTERED ([bono_id] ASC) WITH (
PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[compra_bonos]
ADD CONSTRAINT [PK_Compra_Bonos] PRIMARY KEY CLUSTERED ([compra_id] ASC) WITH
(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[consulta_medica]
ADD CONSTRAINT [PK_Consulta_Medica] PRIMARY KEY CLUSTERED (
[consulta_medica_id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,
IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON
[PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[especialidades]
ADD CONSTRAINT [PK_Especialidades] PRIMARY KEY CLUSTERED ([especialidad_id]
ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF
, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[funcionabilidades]
ADD CONSTRAINT [PK_Funcionabilidades] PRIMARY KEY CLUSTERED (
[funcionabilidad_id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,
IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON
[PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[medicos]
ADD CONSTRAINT [PK_Medicos] PRIMARY KEY CLUSTERED ([medico_id] ASC) WITH (
PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[pacientes]
ADD CONSTRAINT [PK_Pacientes] PRIMARY KEY CLUSTERED ([paciente_id] ASC) WITH
(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[planes]
ADD CONSTRAINT [PK_Planes] PRIMARY KEY CLUSTERED ([plan_id] ASC) WITH (
PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[resultados]
ADD CONSTRAINT [PK_Resultados] PRIMARY KEY CLUSTERED ([resultado_id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[sintomas]
ADD CONSTRAINT [PK_Sintomas] PRIMARY KEY CLUSTERED ([sintoma_id] ASC) WITH (
PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[rol]
ADD CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED ([rol_id] ASC) WITH (PAD_INDEX
= OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS =
ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[tipo_documento]
ADD CONSTRAINT [PK_Tipo_Documento_id] PRIMARY KEY CLUSTERED (
[tipo_documento_id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,
IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON
[PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[tipo_especialidad]
ADD CONSTRAINT [PK_Tipo_Especialidad] PRIMARY KEY CLUSTERED (
[tipo_especialidad_id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE =
OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON
[PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[turnos]
ADD CONSTRAINT [PK_Turnos] PRIMARY KEY CLUSTERED ([turno_id] ASC) WITH (
PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[usuarios]
ADD CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED ([usuario_id] ASC) WITH (
PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[sexo]
ADD CONSTRAINT [Sexo_id] PRIMARY KEY CLUSTERED ([sexo_id] ASC) WITH (
PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[dias_semana]
ADD CONSTRAINT [Dia_Semana_id] PRIMARY KEY CLUSTERED ([dia_semana_id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[cancelaciones]
ADD CONSTRAINT [cancelacion_id] PRIMARY KEY CLUSTERED ([cancelacion_id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [JOINEANDO_ANDO].[tipo_cancelaciones]
ADD CONSTRAINT [Tipo_Cancelacion_id] PRIMARY KEY CLUSTERED (
[tipo_cancelacion_id] ASC) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF
, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON
[PRIMARY]

GO


-- FK 
ALTER TABLE [JOINEANDO_ANDO].[agendas]
WITH CHECK ADD CONSTRAINT [FK_Agendas_Especialidades] FOREIGN KEY (
[especialidad_id]) REFERENCES [JOINEANDO_ANDO].[especialidades] (
[especialidad_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[agendas]
CHECK CONSTRAINT [FK_Agendas_Especialidades]

GO

ALTER TABLE [JOINEANDO_ANDO].[agendas]
WITH CHECK ADD CONSTRAINT [FK_Agendas_Medicos] FOREIGN KEY ([medico_id])
REFERENCES [JOINEANDO_ANDO].[medicos] ([medico_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[agendas]
CHECK CONSTRAINT [FK_Agendas_Medicos]

GO

ALTER TABLE [JOINEANDO_ANDO].[dias_atencion]
WITH CHECK ADD CONSTRAINT [FK_Agenda_id] FOREIGN KEY ([agenda_id]) REFERENCES
[JOINEANDO_ANDO].[agendas] ([agenda_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[dias_atencion]
CHECK CONSTRAINT [FK_Agenda_id]

GO

ALTER TABLE [JOINEANDO_ANDO].[dias_atencion]
WITH CHECK ADD CONSTRAINT [FK_Dia_id] FOREIGN KEY ([dia_id]) REFERENCES
[JOINEANDO_ANDO].[dias_semana] ([dia_semana_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[bonos]
WITH CHECK ADD CONSTRAINT [FK_Bonos_Planes] FOREIGN KEY ([plan_id]) REFERENCES
[JOINEANDO_ANDO].[planes] ([plan_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[bonos]
CHECK CONSTRAINT [FK_Bonos_Planes]

GO

ALTER TABLE [JOINEANDO_ANDO].[bonos]
WITH CHECK ADD CONSTRAINT [FK_compra_bono_id] FOREIGN KEY ([compra_id])
REFERENCES [JOINEANDO_ANDO].[compra_bonos] ([compra_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[bonos]
CHECK CONSTRAINT [FK_compra_bono_id]

GO

ALTER TABLE [JOINEANDO_ANDO].[turnos]
WITH CHECK ADD CONSTRAINT [FK_Cancelacion_id] FOREIGN KEY ([cancelacion_id])
REFERENCES [JOINEANDO_ANDO].[cancelaciones] ([cancelacion_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[turnos]
CHECK CONSTRAINT [FK_Cancelacion_id]

GO

ALTER TABLE [JOINEANDO_ANDO].[cancelaciones]
WITH CHECK ADD CONSTRAINT [FK_Tipo_Cancelacion] FOREIGN KEY ([tipo]) REFERENCES
[JOINEANDO_ANDO].[tipo_cancelaciones] ([tipo_cancelacion_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[cancelaciones]
CHECK CONSTRAINT [FK_Tipo_Cancelacion]

GO

ALTER TABLE [JOINEANDO_ANDO].[consulta_medica]
WITH CHECK ADD CONSTRAINT [FK_Consulta_Medica_Bonos] FOREIGN KEY ([bono_id])
REFERENCES [JOINEANDO_ANDO].[bonos] ([bono_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[consulta_medica]
CHECK CONSTRAINT [FK_Consulta_Medica_Bonos]

GO

ALTER TABLE [JOINEANDO_ANDO].[consulta_medica]
WITH CHECK ADD CONSTRAINT [FK_Consulta_Medica_Turnos] FOREIGN KEY ([turno_id])
REFERENCES [JOINEANDO_ANDO].[turnos] ([turno_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[consulta_medica]
CHECK CONSTRAINT [FK_Consulta_Medica_Turnos]

GO

ALTER TABLE [JOINEANDO_ANDO].[especialidades]
WITH CHECK ADD CONSTRAINT [FK_Especialidades_Tipo_Especialidad] FOREIGN KEY (
[tipo_especialidad_id]) REFERENCES [JOINEANDO_ANDO].[tipo_especialidad] (
[tipo_especialidad_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[especialidades]
CHECK CONSTRAINT [FK_Especialidades_Tipo_Especialidad]

GO

ALTER TABLE [JOINEANDO_ANDO].[habilitados]
WITH CHECK ADD CONSTRAINT [FK_Habilitados_Pacientes] FOREIGN KEY ([paciente_id]
) REFERENCES [JOINEANDO_ANDO].[pacientes] ([paciente_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[habilitados]
CHECK CONSTRAINT [FK_Habilitados_Pacientes]

GO

ALTER TABLE [JOINEANDO_ANDO].[medico_especialidad]
WITH CHECK ADD CONSTRAINT [FK_Medico_Especialidad_Especialidades] FOREIGN KEY (
[especialidad_id]) REFERENCES [JOINEANDO_ANDO].[especialidades] (
[especialidad_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[medico_especialidad]
CHECK CONSTRAINT [FK_Medico_Especialidad_Especialidades]

GO

ALTER TABLE [JOINEANDO_ANDO].[medico_especialidad]
WITH CHECK ADD CONSTRAINT [FK_Medico_Especialidad_Medicos] FOREIGN KEY (
[medico_id]) REFERENCES [JOINEANDO_ANDO].[medicos] ([medico_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[medico_especialidad]
CHECK CONSTRAINT [FK_Medico_Especialidad_Medicos]

GO

ALTER TABLE [JOINEANDO_ANDO].[medicos]
WITH CHECK ADD CONSTRAINT [FK_Medicos_Usuarios] FOREIGN KEY ([medico_id])
REFERENCES [JOINEANDO_ANDO].[usuarios] ([usuario_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[medicos]
CHECK CONSTRAINT [FK_Medicos_Usuarios]

GO

ALTER TABLE [JOINEANDO_ANDO].[pacientes]
WITH CHECK ADD CONSTRAINT [FK_Pacientes_Planes] FOREIGN KEY ([plan_id])
REFERENCES [JOINEANDO_ANDO].[planes] ([plan_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[pacientes]
CHECK CONSTRAINT [FK_Pacientes_Planes]

GO

ALTER TABLE [JOINEANDO_ANDO].[pacientes]
WITH CHECK ADD CONSTRAINT [FK_Pacientes_Usuarios] FOREIGN KEY ([paciente_id])
REFERENCES [JOINEANDO_ANDO].[usuarios] ([usuario_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[pacientes]
CHECK CONSTRAINT [FK_Pacientes_Usuarios]

GO

ALTER TABLE [JOINEANDO_ANDO].[resultados]
WITH CHECK ADD CONSTRAINT [FK_Resultados_Consulta_Medica] FOREIGN KEY (
[consulta_medica_id]) REFERENCES [JOINEANDO_ANDO].[consulta_medica] (
[consulta_medica_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[resultados]
CHECK CONSTRAINT [FK_Resultados_Consulta_Medica]

GO

ALTER TABLE [JOINEANDO_ANDO].[sintomas]
WITH CHECK ADD CONSTRAINT [FK_Resultado_id] FOREIGN KEY ([resultado_id])
REFERENCES [JOINEANDO_ANDO].[resultados] ([resultado_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[sintomas]
CHECK CONSTRAINT [FK_Resultado_id]

GO

ALTER TABLE [JOINEANDO_ANDO].[rol_funcionabilidad]
WITH CHECK ADD CONSTRAINT [FK_Rol_Funcionabilidad_Funcionabilidades] FOREIGN
KEY ([funcionabilidad_id]) REFERENCES [JOINEANDO_ANDO].[funcionabilidades] (
[funcionabilidad_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[rol_funcionabilidad]
CHECK CONSTRAINT [FK_Rol_Funcionabilidad_Funcionabilidades]

GO

ALTER TABLE [JOINEANDO_ANDO].[rol_funcionabilidad]
WITH CHECK ADD CONSTRAINT [FK_Rol_Funcionabilidad_Rol] FOREIGN KEY ([rol_id])
REFERENCES [JOINEANDO_ANDO].[rol] ([rol_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[rol_funcionabilidad]
CHECK CONSTRAINT [FK_Rol_Funcionabilidad_Rol]

GO

ALTER TABLE [JOINEANDO_ANDO].[turnos]
WITH CHECK ADD CONSTRAINT [FK_Turnos_Agendas] FOREIGN KEY ([agenda_id])
REFERENCES [JOINEANDO_ANDO].[agendas] ([agenda_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[turnos]
CHECK CONSTRAINT [FK_Turnos_Agendas]

GO

ALTER TABLE [JOINEANDO_ANDO].[turnos]
WITH CHECK ADD CONSTRAINT [FK_Turnos_Pacientes] FOREIGN KEY ([paciente_id])
REFERENCES [JOINEANDO_ANDO].[pacientes] ([paciente_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[turnos]
CHECK CONSTRAINT [FK_Turnos_Pacientes]

GO

ALTER TABLE [JOINEANDO_ANDO].[usuario_rol]
WITH CHECK ADD CONSTRAINT [FK_Usuario_Rol_Rol] FOREIGN KEY ([rol_id])
REFERENCES [JOINEANDO_ANDO].[rol] ([rol_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[usuario_rol]
CHECK CONSTRAINT [FK_Usuario_Rol_Rol]

GO

ALTER TABLE [JOINEANDO_ANDO].[usuario_rol]
WITH CHECK ADD CONSTRAINT [FK_Usuario_Rol_Usuarios] FOREIGN KEY ([usuario_id])
REFERENCES [JOINEANDO_ANDO].[usuarios] ([usuario_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[usuario_rol]
CHECK CONSTRAINT [FK_Usuario_Rol_Usuarios]

GO

ALTER TABLE [JOINEANDO_ANDO].[usuarios]
WITH CHECK ADD CONSTRAINT [FK_Usuarios_Tipo_Documento] FOREIGN KEY (
[tipo_documento_id]) REFERENCES [JOINEANDO_ANDO].[tipo_documento] (
[tipo_documento_id])

GO


ALTER TABLE [JOINEANDO_ANDO].[usuarios]  ADD CONSTRAINT [Unico] UNIQUE ([tipo_documento_id], [numero_documento]);


GO

ALTER TABLE [JOINEANDO_ANDO].[usuarios]
CHECK CONSTRAINT [FK_Usuarios_Tipo_Documento]

GO

ALTER TABLE [JOINEANDO_ANDO].[usuarios]
WITH CHECK ADD CONSTRAINT [FK_Usuarios_Sexo] FOREIGN KEY ([sexo_id]) REFERENCES
[JOINEANDO_ANDO].[sexo] ([sexo_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[compra_bonos]
WITH CHECK ADD CONSTRAINT [FK_compra_bono_paciente_id] FOREIGN KEY (
[paciente_id]) REFERENCES [JOINEANDO_ANDO].[pacientes] ([paciente_id])

GO

ALTER TABLE [JOINEANDO_ANDO].[hist_cambios]
WITH CHECK ADD CONSTRAINT [FK_Paciente_id] FOREIGN KEY ([paciente_id])
REFERENCES [JOINEANDO_ANDO].[pacientes] ([paciente_id])

GO

--Datos usuarios
DECLARE @rol nvarchar(50);
DECLARE @funcionabilidad nvarchar(50);

BEGIN
  INSERT INTO [JOINEANDO_ANDO].usuarios
    SELECT
      'asd',
      '123',
      123,
      1,
      89,
      98,
      'asd',
      '4/4/1988',
      NULL,
      'admin',
      HASHBYTES('SHA2_256', 'w23e'),
      1,
      0
    WHERE NOT EXISTS (SELECT
      *
    FROM joineando_ando.usuarios
    WHERE nombre_usuario = 'admin')

  INSERT INTO [JOINEANDO_ANDO].usuario_rol
    SELECT (SELECT TOP 1
             usuario_id
           FROM joineando_ando.usuarios
           WHERE nombre_usuario = 'admin'),
           (SELECT TOP 1
             rol_id
           FROM joineando_ando.rol
           WHERE nombre = 'Admin')
    WHERE NOT EXISTS (SELECT TOP 1
      *
    FROM [JOINEANDO_ANDO].usuario_rol
    WHERE usuario_id = (SELECT TOP 1
      usuario_id
    FROM joineando_ando.usuarios
    WHERE nombre_usuario = 'admin')
    AND rol_id = (SELECT TOP 1
      rol_id
    FROM joineando_ando.rol
    WHERE nombre = 'Admin'))

  INSERT INTO [JOINEANDO_ANDO].usuarios
    SELECT
      'asd',
      '123',
      1423,
      1,
      89,
      98,
      'asd',
      '4/4/1988',
      NULL,
      'administrativo',
      HASHBYTES('SHA2_256', '123456'),
      1,
      0
    WHERE NOT EXISTS (SELECT
      *
    FROM joineando_ando.usuarios
    WHERE nombre_usuario = 'administrativo')

  INSERT INTO [JOINEANDO_ANDO].usuario_rol
    SELECT (SELECT TOP 1
             usuario_id
           FROM joineando_ando.usuarios
           WHERE nombre_usuario = 'administrativo'),
           (SELECT TOP 1
             rol_id
           FROM joineando_ando.rol
           WHERE nombre = 'Administrativo')
    WHERE NOT EXISTS (SELECT TOP 1
      *
    FROM [JOINEANDO_ANDO].usuario_rol
    WHERE usuario_id = (SELECT TOP 1
      usuario_id
    FROM joineando_ando.usuarios
    WHERE nombre_usuario = 'administrativo')
    AND rol_id = (SELECT TOP 1
      rol_id
    FROM joineando_ando.rol
    WHERE nombre = 'Administrativo'))
END

GO



-- AGREGO UNA AGENDA CON DISPONIBILIDAD HORARIA PARA PODER PROBAR TURNOS
INSERT INTO joineando_ando.medico_especialidad (medico_id,
especialidad_id)
  VALUES (10000, 9999)

GO


/*
Si desean probar con una agenda con horario descomentar esta zona
INSERT INTO joineando_ando.agendas 
            (medico_id, 
             especialidad_id) 
VALUES      (10000, 
             9999) 




DECLARE @Agenda_Id INT 

SET @Agenda_Id = @@IDENTITY 

INSERT INTO joineando_ando.dias_atencion 
            (agenda_id, 
             dia_id, 
             inicio_horario, 
             fin_horario) 
VALUES      (@Agenda_Id, 
             1, 
             '08:00:00', 
             '14:00:00' ) 

INSERT INTO joineando_ando.dias_atencion 
            (agenda_id, 
             dia_id, 
             inicio_horario, 
             fin_horario) 
VALUES      (@Agenda_Id, 
             4, 
             '08:00:00', 
             '13:00:00') 

INSERT INTO joineando_ando.dias_atencion 
            (agenda_id, 
             dia_id, 
             inicio_horario, 
             fin_horario) 
VALUES      (@Agenda_Id, 
             5, 
             '08:00:00', 
             '16:00:00') 

*/