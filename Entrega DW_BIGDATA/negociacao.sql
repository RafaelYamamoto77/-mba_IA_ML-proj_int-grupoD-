select n.valor,n.quantidade, d.date dataNegociacao,
a.agencia, a.cidade,
c.numeroContrato, c.versaoContrato,
cl.cnae, cl.codigoCliente, cl.documento, cl.estadoCivil, cl.faixaEtaria,cl.faixaRenda,cl.genero, cl.tipoCliente, cl.tipoPessoa,cl.versaoCliente
from grupod.dw_negociacao n
inner join grupod.dw_agencia a  on a.idAgencia = n.idAgencia
inner join grupod.dw_contrato c on c.idContrato = n.idContrato
inner join grupod.dw_cliente cl on cl.idCliente = n.idCliente
inner join grupod.dw_date_dimension d on d.date_id = n.data