-- grupod.dw_agencia definition

CREATE TABLE `dw_agencia` (
  `idAgencia` int NOT NULL,
  `agencia` varchar(200) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  PRIMARY KEY (`idAgencia`),
  UNIQUE KEY `idAgencia_UNIQUE` (`idAgencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.dw_beneficiario definition

CREATE TABLE `dw_beneficiario` (
  `idBeneficiario` int NOT NULL,
  `banco` varchar(200) NOT NULL,
  `agencia` varchar(200) NOT NULL,
  `conta` varchar(200) NOT NULL,
  `documento` varchar(200) NOT NULL,
  PRIMARY KEY (`idBeneficiario`),
  UNIQUE KEY `idBeneficiario_UNIQUE` (`idBeneficiario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.dw_cliente definition

CREATE TABLE `dw_cliente` (
  `idCliente` int NOT NULL,
  `codigoCliente` int NOT NULL,
  `versaoCliente` int NOT NULL,
  `tipoCliente` varchar(200) NOT NULL,
  `genero` varchar(200) NOT NULL,
  `tipoPessoa` varchar(200) NOT NULL,
  `estadoCivil` varchar(200) NOT NULL,
  `faixaEtaria` varchar(200) NOT NULL,
  `documento` varchar(200) NOT NULL,
  `cnae` varchar(200) NOT NULL,
  `faixaRenda` varchar(200) NOT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `idCliente_UNIQUE` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';


-- grupod.dw_conta definition

CREATE TABLE `dw_conta` (
  `idConta` int NOT NULL,
  PRIMARY KEY (`idConta`),
  UNIQUE KEY `idConta_UNIQUE` (`idConta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.dw_contrato definition

CREATE TABLE `dw_contrato` (
  `idContrato` int NOT NULL,
  `numeroContrato` varchar(200) NOT NULL,
  `versaoContrato` varchar(200) NOT NULL,
  PRIMARY KEY (`idContrato`),
  UNIQUE KEY `idContrato_UNIQUE` (`idContrato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.dw_data definition

CREATE TABLE `dw_data` (
  `idData` int NOT NULL,
  `data` date NOT NULL,
  `dia` int NOT NULL,
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `bimestre` varchar(200) NOT NULL,
  `trimestre` varchar(200) NOT NULL,
  `semestre` varchar(200) NOT NULL,
  `diaUtil` tinyint NOT NULL,
  `semana` varchar(200) NOT NULL,
  `diaSemana` varchar(200) NOT NULL,
  `mesExtenso` varchar(200) NOT NULL,
  `mesAbreviado` varchar(200) NOT NULL,
  PRIMARY KEY (`idData`),
  UNIQUE KEY `id_data_UNIQUE` (`idData`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.dw_dataAbertura definition

CREATE TABLE `dw_dataAbertura` (
  `idDataAbertura` int NOT NULL,
  `data` date NOT NULL,
  `dia` int NOT NULL,
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `bimestre` varchar(200) NOT NULL,
  `trimestre` varchar(200) NOT NULL,
  `semestre` varchar(200) NOT NULL,
  `diaUtil` tinyint NOT NULL,
  `semana` varchar(200) NOT NULL,
  `diaSemana` varchar(200) NOT NULL,
  `mesExtenso` varchar(200) NOT NULL,
  `mesAbreviado` varchar(200) NOT NULL,
  PRIMARY KEY (`idDataAbertura`),
  UNIQUE KEY `id_data_UNIQUE` (`idDataAbertura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.dw_dataFechamento definition

CREATE TABLE `dw_dataFechamento` (
  `idDataFechamento` int NOT NULL,
  `data` date NOT NULL,
  `dia` int NOT NULL,
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `bimestre` varchar(200) NOT NULL,
  `trimestre` varchar(200) NOT NULL,
  `semestre` varchar(200) NOT NULL,
  `diaUtil` tinyint NOT NULL,
  `semana` varchar(200) NOT NULL,
  `diaSemana` varchar(200) NOT NULL,
  `mesExtenso` varchar(200) NOT NULL,
  `mesAbreviado` varchar(200) NOT NULL,
  PRIMARY KEY (`idDataFechamento`),
  UNIQUE KEY `id_data_UNIQUE` (`idDataFechamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.dw_date_dimension definition

CREATE TABLE `dw_date_dimension` (
  `date_id` bigint NOT NULL,
  `date` date NOT NULL,
  `year` int DEFAULT NULL,
  `month` char(10) DEFAULT NULL,
  `month_of_year` char(2) DEFAULT NULL,
  `day_of_month` int DEFAULT NULL,
  `day` char(10) DEFAULT NULL,
  `day_of_week` int DEFAULT NULL,
  `weekend` char(10) NOT NULL DEFAULT 'Weekday',
  `day_of_year` int DEFAULT NULL,
  `week_of_year` char(2) DEFAULT NULL,
  `quarter` int DEFAULT NULL,
  PRIMARY KEY (`date_id`),
  UNIQUE KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.dw_produto definition

CREATE TABLE `dw_produto` (
  `idProduto` int NOT NULL,
  `produto` varchar(200) NOT NULL,
  `tipoProduto` varchar(200) NOT NULL,
  `nomeProduto` varchar(200) NOT NULL,
  PRIMARY KEY (`idProduto`),
  UNIQUE KEY `idProduto_UNIQUE` (`idProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.dw_regiao definition

CREATE TABLE `dw_regiao` (
  `idRegiao` int NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `estado` varchar(200) NOT NULL,
  `pais` varchar(200) NOT NULL,
  `regiao` varchar(200) NOT NULL,
  PRIMARY KEY (`idRegiao`),
  UNIQUE KEY `idRegiao_UNIQUE` (`idRegiao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.dw_tipoOperacao definition

CREATE TABLE `dw_tipoOperacao` (
  `idTipoOperacao` int NOT NULL,
  `tipoOperacao` varchar(200) NOT NULL,
  PRIMARY KEY (`idTipoOperacao`),
  UNIQUE KEY `idTipoOperacao_UNIQUE` (`idTipoOperacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.dw_tipoTransacao definition

CREATE TABLE `dw_tipoTransacao` (
  `idTipoTransacao` int NOT NULL,
  `tipoTransacao` varchar(200) NOT NULL,
  PRIMARY KEY (`idTipoTransacao`),
  UNIQUE KEY `idTipoTransacao_UNIQUE` (`idTipoTransacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.numbers definition

CREATE TABLE `numbers` (
  `number` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.numbers_small definition

CREATE TABLE `numbers_small` (
  `number` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_agencia definition

CREATE TABLE `rel_agencia` (
  `idAgencia` int NOT NULL,
  `cidade` varchar(200) DEFAULT NULL,
  `nomeUnidade` varchar(200) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `numero` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idAgencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_beneficiario definition

CREATE TABLE `rel_beneficiario` (
  `idBeneficiario` int NOT NULL,
  `documento` varchar(200) DEFAULT NULL,
  `banco` varchar(200) DEFAULT NULL,
  `conta` varchar(200) DEFAULT NULL,
  `agencia` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idBeneficiario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_pais definition

CREATE TABLE `rel_pais` (
  `cdPais` varchar(200) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cdPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_tipoCNAE definition

CREATE TABLE `rel_tipoCNAE` (
  `idCNAE` int NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idCNAE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_tipoCliente definition

CREATE TABLE `rel_tipoCliente` (
  `idTipoCliente` int NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idTipoCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_tipoDocumento definition

CREATE TABLE `rel_tipoDocumento` (
  `idtipoDocumento` int NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idtipoDocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_tipoEstadoCivil definition

CREATE TABLE `rel_tipoEstadoCivil` (
  `idEstadoCivil` int NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idEstadoCivil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_tipoGenero definition

CREATE TABLE `rel_tipoGenero` (
  `idGenero` int NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_tipoOperacao definition

CREATE TABLE `rel_tipoOperacao` (
  `idtipoOperacao` int NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `taxa` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`idtipoOperacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_tipoPessoa definition

CREATE TABLE `rel_tipoPessoa` (
  `idTipoPessoa` int NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idTipoPessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_tipoProduto definition

CREATE TABLE `rel_tipoProduto` (
  `idtipoProduto` int NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idtipoProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_tipoSituacaoConta definition

CREATE TABLE `rel_tipoSituacaoConta` (
  `idSituacaoConta` int NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idSituacaoConta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_tipoSituacaoContrato definition

CREATE TABLE `rel_tipoSituacaoContrato` (
  `idSituacaoContrato` int NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idSituacaoContrato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_tipoTransacao definition

CREATE TABLE `rel_tipoTransacao` (
  `idtipoTransacao` int NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idtipoTransacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_cliente definition

CREATE TABLE `rel_cliente` (
  `idCliente` int NOT NULL,
  `idEndereco` int DEFAULT NULL,
  `nomeCliente` varchar(200) DEFAULT NULL,
  `idTipoCliente` int DEFAULT NULL,
  `documento` varchar(200) DEFAULT NULL,
  `idTipoDocumento` int DEFAULT NULL,
  `telefoneContato` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `idGenero` int DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `idEstadoCivil` int DEFAULT NULL,
  `renda` decimal(10,0) DEFAULT NULL,
  `idCNAE` int DEFAULT NULL,
  `idTipoPessoa` int DEFAULT NULL,
  `idEnderenco` int DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `FK_TIPO_PESSOA_idx` (`idTipoPessoa`),
  KEY `FK_TIPO_CLIENTE_idx` (`idTipoCliente`),
  KEY `FK_TIPO_DOCUMENTO_idx` (`idTipoDocumento`),
  KEY `FK_TIPO_GENERO_idx` (`idGenero`),
  KEY `FK_ESTADO_CIVIL_idx` (`idEstadoCivil`),
  KEY `FK_TIPO_CNAE_idx` (`idCNAE`),
  CONSTRAINT `FK_TIPO_CLIENTE` FOREIGN KEY (`idTipoCliente`) REFERENCES `rel_tipoCliente` (`idTipoCliente`),
  CONSTRAINT `FK_TIPO_CNAE` FOREIGN KEY (`idCNAE`) REFERENCES `rel_tipoCNAE` (`idCNAE`),
  CONSTRAINT `FK_TIPO_DOCUMENTO` FOREIGN KEY (`idTipoDocumento`) REFERENCES `rel_tipoDocumento` (`idtipoDocumento`),
  CONSTRAINT `FK_TIPO_ESTADO_CIVIL` FOREIGN KEY (`idEstadoCivil`) REFERENCES `rel_tipoEstadoCivil` (`idEstadoCivil`),
  CONSTRAINT `FK_TIPO_GENERO` FOREIGN KEY (`idGenero`) REFERENCES `rel_tipoGenero` (`idGenero`),
  CONSTRAINT `FK_TIPO_PESSOA` FOREIGN KEY (`idTipoPessoa`) REFERENCES `rel_tipoPessoa` (`idTipoPessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_conta definition

CREATE TABLE `rel_conta` (
  `idConta` int NOT NULL,
  `idAgencia` int DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `dataAbertura` date DEFAULT NULL,
  `idSituacaoConta` int DEFAULT NULL,
  `dataFechamento` date DEFAULT NULL,
  PRIMARY KEY (`idConta`),
  KEY `FK_CLIENTE_idx` (`idCliente`),
  KEY `FK_AGENCIA_idx` (`idAgencia`),
  KEY `FK_SITUACAO_CONTA_idx` (`idSituacaoConta`),
  CONSTRAINT `FK_AGENCIA` FOREIGN KEY (`idAgencia`) REFERENCES `rel_agencia` (`idAgencia`),
  CONSTRAINT `FK_CLIENTE_CONTA` FOREIGN KEY (`idCliente`) REFERENCES `rel_cliente` (`idCliente`),
  CONSTRAINT `FK_SITUACAO_CONTA` FOREIGN KEY (`idSituacaoConta`) REFERENCES `rel_tipoSituacaoConta` (`idSituacaoConta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_estado definition

CREATE TABLE `rel_estado` (
  `UF` varchar(200) NOT NULL,
  `nomeEstado` varchar(200) DEFAULT NULL,
  `cdPais` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`UF`),
  KEY `FK_CD_PAIS_idx` (`cdPais`),
  CONSTRAINT `FK_CD_PAIS` FOREIGN KEY (`cdPais`) REFERENCES `rel_pais` (`cdPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_produto definition

CREATE TABLE `rel_produto` (
  `idProduto` int NOT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `idTipoProduto` int DEFAULT NULL,
  `taxa` decimal(10,2) DEFAULT NULL,
  `nomeProduto` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `FK_TIPO_PRODUTO_idx` (`idTipoProduto`),
  CONSTRAINT `FK_TIPO_PRODUTO` FOREIGN KEY (`idTipoProduto`) REFERENCES `rel_tipoProduto` (`idtipoProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_saldo definition

CREATE TABLE `rel_saldo` (
  `idSaldo` int NOT NULL,
  `idConta` int DEFAULT NULL,
  `data` date DEFAULT NULL,
  `valorSaldo` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`idSaldo`),
  KEY `FK_CONTA_idx` (`idConta`),
  CONSTRAINT `FK_CONTA` FOREIGN KEY (`idConta`) REFERENCES `rel_conta` (`idConta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_transacao definition

CREATE TABLE `rel_transacao` (
  `idTransacao` int NOT NULL,
  `idContaOrigem` int DEFAULT NULL,
  `idBeneficiario` int DEFAULT NULL,
  `valorTransacao` decimal(10,0) DEFAULT NULL,
  `idTipoOperacao` int DEFAULT NULL,
  `dataHoraTransacao` datetime DEFAULT NULL,
  `idTipoTransacao` int DEFAULT NULL,
  `valorTaxa` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`idTransacao`),
  KEY `ID_CONTA_TRANSACAO_idx` (`idContaOrigem`),
  KEY `FK_BENEFICIARIO_idx` (`idBeneficiario`),
  KEY `FK_TIPO_OPERACAO_idx` (`idTipoOperacao`),
  KEY `FK_TIPO_TRANSACAO_idx` (`idTipoTransacao`),
  CONSTRAINT `FK_BENEFICIARIO` FOREIGN KEY (`idBeneficiario`) REFERENCES `rel_beneficiario` (`idBeneficiario`),
  CONSTRAINT `FK_CONTA_TRANSACAO` FOREIGN KEY (`idContaOrigem`) REFERENCES `rel_conta` (`idConta`),
  CONSTRAINT `FK_TIPO_OPERACAO` FOREIGN KEY (`idTipoOperacao`) REFERENCES `rel_tipoOperacao` (`idtipoOperacao`),
  CONSTRAINT `FK_TIPO_TRANSACAO` FOREIGN KEY (`idTipoTransacao`) REFERENCES `rel_tipoTransacao` (`idtipoTransacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_cidade definition

CREATE TABLE `rel_cidade` (
  `codIBGE` varchar(200) NOT NULL,
  `UF` varchar(200) DEFAULT NULL,
  `nomeCidade` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codIBGE`),
  KEY `FK_UF_idx` (`UF`),
  CONSTRAINT `FK_UF` FOREIGN KEY (`UF`) REFERENCES `rel_estado` (`UF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_contrato definition

CREATE TABLE `rel_contrato` (
  `idContrato` int NOT NULL,
  `idConta` int DEFAULT NULL,
  `idProduto` int DEFAULT NULL,
  `dataContrato` date DEFAULT NULL,
  `idSituacaoContrato` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `numeroContrato` int DEFAULT NULL,
  `versaoContrato` int DEFAULT NULL,
  `taxa` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`idContrato`),
  KEY `FK_CONTA_idx` (`idConta`),
  KEY `FK_SITUACAO_CONTRATO_idx` (`idSituacaoContrato`),
  KEY `FK_PRODUTO_idx` (`idProduto`),
  CONSTRAINT `FK_CONTA_CONTRATO` FOREIGN KEY (`idConta`) REFERENCES `rel_conta` (`idConta`),
  CONSTRAINT `FK_PRODUTO` FOREIGN KEY (`idProduto`) REFERENCES `rel_produto` (`idProduto`),
  CONSTRAINT `FK_SITUACAO_CONTRATO` FOREIGN KEY (`idSituacaoContrato`) REFERENCES `rel_tipoSituacaoContrato` (`idSituacaoContrato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.rel_endereco definition

CREATE TABLE `rel_endereco` (
  `idEndereco` int NOT NULL,
  `codIBGE` varchar(200) DEFAULT NULL,
  `logradouro` varchar(200) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `complemento` varchar(200) DEFAULT NULL,
  `cep` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idEndereco`),
  KEY `FK_CLIENTE_idx` (`idCliente`),
  KEY `FK_IBGE_idx` (`codIBGE`),
  CONSTRAINT `FK_CLIENTE` FOREIGN KEY (`idCliente`) REFERENCES `rel_cliente` (`idCliente`),
  CONSTRAINT `FK_IBGE` FOREIGN KEY (`codIBGE`) REFERENCES `rel_cidade` (`codIBGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.dw_negociacao definition

CREATE TABLE `dw_negociacao` (
  `quantidade` decimal(10,0) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `data` int NOT NULL,
  `idCliente` int NOT NULL,
  `idAgencia` int NOT NULL,
  `idNegociacao` int NOT NULL AUTO_INCREMENT,
  `idContrato` int NOT NULL,
  PRIMARY KEY (`idNegociacao`),
  KEY `fk_dw_negociacao_dw_cliente1_idx` (`idCliente`),
  KEY `fk_dw_negociacao_dw_agencia1_idx` (`idAgencia`),
  KEY `fk_dw_negociacao_dw_contrato1_idx` (`idContrato`),
  KEY `fk_dw_negociacao_dw_data1` (`data`),
  CONSTRAINT `fk_dw_negociacao_dw_agencia1` FOREIGN KEY (`idAgencia`) REFERENCES `dw_agencia` (`idAgencia`),
  CONSTRAINT `fk_dw_negociacao_dw_cliente1` FOREIGN KEY (`idCliente`) REFERENCES `dw_cliente` (`idCliente`),
  CONSTRAINT `fk_dw_negociacao_dw_contrato1` FOREIGN KEY (`idContrato`) REFERENCES `dw_contrato` (`idContrato`),
  CONSTRAINT `fk_dw_negociacao_dw_data1` FOREIGN KEY (`data`) REFERENCES `dw_data` (`idData`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.dw_transacao definition

CREATE TABLE `dw_transacao` (
  `valor` decimal(10,0) NOT NULL,
  `saldo` decimal(10,0) NOT NULL,
  `taxa` decimal(10,0) NOT NULL,
  `hora` int NOT NULL,
  `timestamp` datetime NOT NULL,
  `dataTransacao` bigint NOT NULL,
  `idBeneficiario` int NOT NULL,
  `idTipoOperacao` int NOT NULL,
  `idTipoTransacao` int NOT NULL,
  `idCliente` int NOT NULL,
  `idAgencia` int NOT NULL,
  `idTransacao` varchar(200) NOT NULL,
  `idConta` int DEFAULT NULL,
  PRIMARY KEY (`idTransacao`),
  UNIQUE KEY `idTransacao_UNIQUE` (`idTransacao`),
  KEY `fk_dw_transacao_dw_data_idx` (`dataTransacao`),
  KEY `fk_dw_transacao_dw_beneficiario1_idx` (`idBeneficiario`),
  KEY `fk_dw_transacao_dw_tipoOperacao1_idx` (`idTipoOperacao`),
  KEY `fk_dw_transacao_dw_tipoTransacao1_idx` (`idTipoTransacao`),
  KEY `fk_dw_transacao_dw_cliente1_idx` (`idCliente`),
  KEY `fk_dw_transacao_dw_agencia1_idx` (`idAgencia`),
  KEY `fk_dw_transacao_dw_conta1_idx` (`idConta`),
  CONSTRAINT `fk_dw_transacao_dw_agencia1` FOREIGN KEY (`idAgencia`) REFERENCES `dw_agencia` (`idAgencia`),
  CONSTRAINT `fk_dw_transacao_dw_beneficiario1` FOREIGN KEY (`idBeneficiario`) REFERENCES `dw_beneficiario` (`idBeneficiario`),
  CONSTRAINT `fk_dw_transacao_dw_cliente1` FOREIGN KEY (`idCliente`) REFERENCES `dw_cliente` (`idCliente`),
  CONSTRAINT `fk_dw_transacao_dw_conta1` FOREIGN KEY (`idConta`) REFERENCES `dw_conta` (`idConta`),
  CONSTRAINT `fk_dw_transacao_dw_tipoOperacao1` FOREIGN KEY (`idTipoOperacao`) REFERENCES `dw_tipoOperacao` (`idTipoOperacao`),
  CONSTRAINT `fk_dw_transacao_dw_tipoTransacao1` FOREIGN KEY (`idTipoTransacao`) REFERENCES `dw_tipoTransacao` (`idTipoTransacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- grupod.dw_vigenciaConta definition

CREATE TABLE `dw_vigenciaConta` (
  `quantidade` decimal(10,0) NOT NULL,
  `idMovimentacaoConta` int NOT NULL AUTO_INCREMENT,
  `idConta` int NOT NULL,
  `dataAbertura` bigint NOT NULL,
  `dataFechamento` bigint NOT NULL,
  `idAgencia` int NOT NULL,
  `idCliente` int NOT NULL,
  PRIMARY KEY (`idMovimentacaoConta`,`dataAbertura`,`dataFechamento`),
  UNIQUE KEY `idMovimentacaoConta_UNIQUE` (`idMovimentacaoConta`),
  KEY `fk_dw_vigenciaConta_dw_conta1_idx` (`idConta`),
  KEY `fk_dw_vigenciaConta_dw_dataAbertura1_idx` (`dataAbertura`),
  KEY `fk_dw_vigenciaConta_dw_dataFechamento1_idx` (`dataFechamento`),
  KEY `fk_dw_vigenciaConta_dw_agencia1_idx` (`idAgencia`),
  KEY `fk_dw_vigenciaConta_dw_cliente1_idx` (`idCliente`),
  CONSTRAINT `fk_dw_vigenciaConta_dw_agencia1` FOREIGN KEY (`idAgencia`) REFERENCES `dw_agencia` (`idAgencia`),
  CONSTRAINT `fk_dw_vigenciaConta_dw_cliente1` FOREIGN KEY (`idCliente`) REFERENCES `dw_cliente` (`idCliente`),
  CONSTRAINT `fk_dw_vigenciaConta_dw_conta1` FOREIGN KEY (`idConta`) REFERENCES `dw_conta` (`idConta`),
  CONSTRAINT `fk_dw_vigenciaContaAberturaConta` FOREIGN KEY (`dataAbertura`) REFERENCES `dw_date_dimension` (`date_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_dw_vigenciaContaAberturaFechamento` FOREIGN KEY (`dataFechamento`) REFERENCES `dw_date_dimension` (`date_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;