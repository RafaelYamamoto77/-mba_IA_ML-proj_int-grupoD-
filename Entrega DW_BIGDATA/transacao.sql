select t.valor, t.saldo, t.taxa, t.hora,t.timestamp, t.dataTransacao,
b.agencia, b.banco, b.conta, b.documento,
o.tipoOperacao,
tt.tipoTransacao,
c.cnae, c.codigoCliente, c.documento, c.estadoCivil, c.faixaEtaria,c.faixaRenda,c.genero, c.tipoCliente, c.tipoPessoa,c.versaoCliente,
a.agencia, a.cidade
from grupod.dw_transacao t
inner join grupod.dw_beneficiario b on b.idBeneficiario = t.idBeneficiario
inner join grupod.dw_tipoOperacao o on o.idTipoOperacao = t.idTipoOperacao
inner join grupod.dw_tipoTransacao tt on tt.idTipoTransacao = t.idTipoTransacao
inner join grupod.dw_cliente c on c.idCliente = t.idCliente
inner join grupod.dw_agencia a on a.idAgencia = t.idAgencia
inner join grupod.dw_conta cc on cc.idConta	= t.idConta


