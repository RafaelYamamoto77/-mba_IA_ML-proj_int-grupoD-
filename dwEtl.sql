SET foreign_key_checks = 0;

TRUNCATE TABLE grupod.dw_agencia;
TRUNCATE TABLE grupod.dw_tipoOperacao;
TRUNCATE TABLE grupod.dw_tipoTransacao;
TRUNCATE TABLE grupod.dw_beneficiario;
TRUNCATE TABLE grupod.dw_cliente;
TRUNCATE TABLE grupod.dw_conta;
TRUNCATE TABLE grupod.dw_contrato;
TRUNCATE TABLE grupod.dw_produto;
TRUNCATE TABLE grupod.dw_regiao;
TRUNCATE TABLE grupod.dw_transacao;
TRUNCATE TABLE grupod.dw_negociacao;
TRUNCATE TABLE grupod.dw_vigenciaConta;

INSERT INTO grupod.dw_agencia (grupod.dw_agencia.agencia, grupod.dw_agencia.cidade, grupod.dw_agencia.idAgencia)
SELECT grupod.rel_agencia.nomeUnidade, grupod.rel_agencia.cidade, grupod.rel_agencia.idAgencia
FROM grupod.rel_agencia;

INSERT INTO grupod.dw_tipoOperacao (grupod.dw_tipoOperacao.idTipoOperacao, grupod.dw_tipoOperacao.tipoOperacao)
SELECT grupod.rel_tipoOperacao.idtipoOperacao, grupod.rel_tipoOperacao.descricao
FROM grupod.rel_tipoOperacao;

INSERT INTO grupod.dw_tipoTransacao (grupod.dw_tipoTransacao.idTipoTransacao, grupod.dw_tipoTransacao.tipoTransacao )
SELECT grupod.rel_tipoTransacao.idtipoTransacao, grupod.rel_tipoTransacao.descricao
FROM grupod.rel_tipoTransacao;

INSERT INTO grupod.dw_beneficiario (grupod.dw_beneficiario.agencia, grupod.dw_beneficiario.banco, grupod.dw_beneficiario.conta, grupod.dw_beneficiario.documento, grupod.dw_beneficiario.idBeneficiario)
SELECT grupod.rel_beneficiario.agencia, grupod.rel_beneficiario.banco, grupod.rel_beneficiario.conta, grupod.rel_beneficiario.documento, grupod.rel_beneficiario.idBeneficiario
FROM grupod.rel_beneficiario;

INSERT INTO grupod.dw_cliente (
	grupod.dw_cliente.cnae, 
    grupod.dw_cliente.codigoCliente, 
    grupod.dw_cliente.documento, 
    grupod.dw_cliente.estadoCivil, 
    grupod.dw_cliente.faixaEtaria,    
	grupod.dw_cliente.faixaRenda,
    grupod.dw_cliente.genero, 
    grupod.dw_cliente.idCliente, 
    grupod.dw_cliente.tipoCliente, 
    grupod.dw_cliente.tipoPessoa, 
    grupod.dw_cliente.versaoCliente)
SELECT 
	grupod.rel_tipoCNAE.descricao, 
    grupod.rel_cliente.idCliente, 
    grupod.rel_cliente.documento, 
    grupod.rel_tipoEstadoCivil.descricao,
	CASE 
		WHEN YEAR(CURDATE() ) - YEAR(grupod.rel_cliente.dataNascimento) < 25 THEN 'abaixo de 25'
        WHEN YEAR(CURDATE() ) - YEAR(grupod.rel_cliente.dataNascimento) < 35 THEN '25 a 35'
        WHEN YEAR(CURDATE() ) - YEAR(grupod.rel_cliente.dataNascimento) < 45 THEN '35 a 45'
        WHEN YEAR(CURDATE() ) - YEAR(grupod.rel_cliente.dataNascimento) < 60 THEN '45 a 60'
        ELSE 'Acima de 60'
	END as faixaEtaria,
	CASE 
		WHEN grupod.rel_cliente.renda > 50000 THEN 'Faixa A'
        WHEN grupod.rel_cliente.renda > 30000 THEN 'Faixa B'
        WHEN grupod.rel_cliente.renda > 10000 THEN 'Faixa C'
        ELSE 'Faixa D'
	END as faixaRenda,    
    grupod.rel_tipoGenero.descricao,
    grupod.rel_cliente.idCliente,
    grupod.rel_tipoCliente.descricao,
    grupod.rel_tipoPessoa.descricao,
    '1'
FROM grupod.rel_cliente
JOIN grupod.rel_tipoCNAE ON grupod.rel_tipoCNAE.idCNAE = grupod.rel_cliente.idCNAE
JOIN grupod.rel_tipoEstadoCivil ON grupod.rel_tipoEstadoCivil.idEstadoCivil = grupod.rel_cliente.idEstadoCivil
JOIN grupod.rel_tipoGenero ON grupod.rel_tipoGenero.idGenero = grupod.rel_cliente.idGenero
JOIN grupod.rel_tipoCliente ON grupod.rel_tipoCliente.idTipoCliente = grupod.rel_cliente.idTipoCliente
JOIN grupod.rel_tipoPessoa ON grupod.rel_tipoPessoa.idTipoPessoa = grupod.rel_cliente.idTipoPessoa;

INSERT INTO grupod.dw_conta (grupod.dw_conta.idConta)
SELECT grupod.rel_conta.idConta
FROM grupod.rel_conta;

INSERT INTO grupod.dw_contrato (grupod.dw_contrato.idContrato, grupod.dw_contrato.numeroContrato, grupod.dw_contrato.versaoContrato)
SELECT grupod.rel_contrato.idContrato, grupod.rel_contrato.numeroContrato, grupod.rel_contrato.versaoContrato
FROM grupod.rel_contrato;

INSERT INTO grupod.dw_produto (
	grupod.dw_produto.idProduto, 
    grupod.dw_produto.nomeProduto,
    grupod.dw_produto.produto,
    grupod.dw_produto.tipoProduto)
SELECT 
	grupod.rel_produto.idProduto, 
    grupod.rel_produto.nomeProduto,
    grupod.rel_produto.nomeProduto,
    grupod.rel_produto.idTipoProduto
FROM grupod.rel_produto;

INSERT INTO grupod.dw_regiao (
	grupod.dw_regiao.cidade, 
    grupod.dw_regiao.estado, 
    grupod.dw_regiao.idRegiao, 
    grupod.dw_regiao.pais, 
    grupod.dw_regiao.regiao
    )
SELECT 
	grupod.rel_cidade.nomeCidade, 
	grupod.rel_estado.nomeEstado, 
    grupod.rel_cidade.codIBGE, 
    grupod.rel_pais.descricao, 
    'Sudeste'
FROM grupod.rel_cidade
JOIN grupod.rel_estado ON grupod.rel_cidade.UF = grupod.rel_estado.UF
JOIN grupod.rel_pais ON grupod.rel_estado.cdPais = grupod.rel_pais.cdPais;

INSERT INTO grupod.dw_transacao (
	grupod.dw_transacao.dataTransacao,
    grupod.dw_transacao.hora,
    grupod.dw_transacao.idAgencia,
    grupod.dw_transacao.idBeneficiario,
    grupod.dw_transacao.idCliente,
    grupod.dw_transacao.idConta,
    grupod.dw_transacao.idTipoOperacao,
    grupod.dw_transacao.idTipoTransacao,
    grupod.dw_transacao.idTransacao,
    grupod.dw_transacao.taxa,
    grupod.dw_transacao.timestamp,
    grupod.dw_transacao.valor,
    grupod.dw_transacao.saldo)
SELECT 
	DATE(grupod.rel_transacao.dataHoraTransacao) AS Data,
    HOUR(grupod.rel_transacao.dataHoraTransacao) AS Hora,
    grupod.rel_agencia.idAgencia,
	grupod.rel_transacao.idBeneficiario,
    grupod.rel_conta.idCliente,
    grupod.rel_conta.idConta,
    grupod.rel_transacao.idTipoOperacao,
    grupod.rel_transacao.idTipoTransacao,
    CONCAT(grupod.rel_transacao.idTransacao),
    grupod.rel_transacao.valorTaxa,
    grupod.rel_transacao.dataHoraTransacao,
    grupod.rel_transacao.valorTransacao   ,
    0  
FROM grupod.rel_transacao
LEFT JOIN grupod.rel_conta ON grupod.rel_conta.idConta = grupod.rel_transacao.idContaOrigem
LEFT JOIN grupod.rel_cliente ON grupod.rel_cliente.idCliente = grupod.rel_conta.idCliente
LEFT JOIN grupod.rel_agencia ON grupod.rel_agencia.idAgencia = grupod.rel_conta.idAgencia; 

INSERT INTO grupod.dw_vigenciaConta (
    grupod.dw_vigenciaConta.dataAbertura,
    grupod.dw_vigenciaConta.dataFechamento,
    grupod.dw_vigenciaConta.idAgencia,
    grupod.dw_vigenciaConta.idCliente,
    grupod.dw_vigenciaConta.idConta,
    grupod.dw_vigenciaConta.idMovimentacaoConta,
    grupod.dw_vigenciaConta.quantidade
    )
SELECT
	( SELECT grupod.dw_date_dimension.date_id FROM grupod.dw_date_dimension WHERE date = grupod.rel_conta.dataAbertura ) as dt_Abertura,
	( SELECT grupod.dw_date_dimension.date_id FROM grupod.dw_date_dimension WHERE date = grupod.rel_conta.dataFechamento ) as dt_Fechamento,
    grupod.rel_conta.idAgencia,
    grupod.rel_conta.idCliente,
    grupod.rel_conta.idConta,
    row_number() over (ORDER BY grupod.rel_conta.idConta),
    1
FROM grupod.rel_conta
ORDER BY grupod.rel_conta.idConta;

INSERT INTO grupod.dw_negociacao (
	grupod.dw_negociacao.data, 
    grupod.dw_negociacao.idAgencia, 
    grupod.dw_negociacao.idCliente,
    grupod.dw_negociacao.idContrato,
    grupod.dw_negociacao.idNegociacao,
    grupod.dw_negociacao.quantidade,
    grupod.dw_negociacao.valor)
SELECT
	( SELECT grupod.dw_date_dimension.date_id FROM grupod.dw_date_dimension WHERE date = grupod.rel_contrato.dataContrato ) as dt,
    grupod.rel_conta.idAgencia, 
    grupod.rel_cliente.idCliente,
    grupod.rel_contrato.idContrato,
    row_number() over (ORDER BY grupod.rel_contrato.idContrato, grupod.rel_contrato.versaoContrato),
    grupod.rel_contrato.quantidade,
    grupod.rel_produto.preco
FROM grupod.rel_contrato
LEFT JOIN grupod.rel_conta ON grupod.rel_contrato.idConta = grupod.rel_conta.idConta
LEFT JOIN grupod.rel_cliente ON grupod.rel_cliente.idCliente = grupod.rel_conta.idCliente
LEFT JOIN grupod.rel_produto ON grupod.rel_produto.idProduto = grupod.rel_contrato.idProduto
ORDER BY grupod.rel_contrato.idContrato, grupod.rel_contrato.versaoContrato;

SET foreign_key_checks = 1;
