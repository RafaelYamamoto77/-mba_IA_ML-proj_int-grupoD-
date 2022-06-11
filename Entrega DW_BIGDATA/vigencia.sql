select cc.idConta,
dA.date dataAbertura,
dF.date dataFechamento,
a.agencia, a.cidade,
c.cnae, c.codigoCliente, c.documento, c.estadoCivil, c.faixaEtaria,c.faixaRenda,c.genero, c.tipoCliente, c.tipoPessoa,c.versaoCliente
 from grupod.dw_vigenciaConta v
inner join grupod.dw_conta cc on cc.idConta = v.idConta
inner join grupod.dw_date_dimension dA on dA.date_id = v.dataAbertura
inner join grupod.dw_date_dimension dF on dF.date_id = v.dataFechamento
inner join grupod.dw_agencia a on a.idAgencia = v.idAgencia
inner join grupod.dw_cliente c on c.idCliente = v.idCliente