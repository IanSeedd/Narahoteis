Canais de venda:

Perguntas de negocio:

* ota?

Dados padronizados:

* Nome do canal
* Pct de comissão em decimal para facilitar futuros cálculos



Unidades:

* Nenhuma outra coluna str além de região e estrelas estava zuada

Perguntas de negocio:

* Valores nulos no número de quartos

Dados padronizados:

* Região
* Categoria Hotel
* Quartos de float para int



Tipos\_quarto:

Perguntas de negocio:

Dados padronizados:

* Valor, agora é float para cálculos
* Nomes estão padronizados e devidamente formatados
* Deluxe duplicado foi deletado



Clientes:

Dados sem sentido:

* Estado origem bagunçado -- Solução: considerar a cidade, pedir pro chatgpt fazer um dicionário baseado nos value\_counts() e depois jogar na função que criei
* Faixa etária nula
* Dados que PODEM ser duplicatas

Dados padronizados:

* Cidade origem
* Estado origem corrigido 
* Tipo de cliente, agora são apenas 2 valores
* Nome de cliente
* Duplicatas deletadas e sem nulos



Reservas:

Dados sem sentido:

* Id\_canal float e com dados NaN
* avaliações nulas? como tratar? regra de negocio?
* status No-show? o que seria?
* Possíveis duplicatas

Dados padronizados:

* Id\_canal para int e nulos viraram 0
* data\_checkin e checkout em datetime
* Padronização do status reserva
* Padronização pagamentos
* Duplicatas deletadas
* Correção de dados(enviados pelo cliente) e adição de novos dados



Funcionários:

Dados sem sentido:

* Salários Nulos

Dados padronizados:

* Dados novos adicionados e padronizados
* Tratamento de cargos
* Tratamento de departamentos
* Tratamento de salário para INT
* Tratamento de para datetime na data de admissão

