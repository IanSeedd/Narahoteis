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

* Estado origem bagunçado
* Faixa etária nula
* Dados que PODEM ser duplicatas

Dados padronizados:

* Cidade origem
* Tipo de cliente, agora são apenas 2 valores
* Nome de cliente



Reservas:

Dados sem sentido:

* Id\_canal float e com dados NaN
* avaliações nulas? como tratar? regra de negocio?
* status No-show? o que seria?
* Possíveis duplicatas

Dados padronizados:

* Id\_canal para int
* data\_checkin e checkout em datetime
* Padronização do status reserva
* Padronização pagamentos
* Duplicatas deletadas



Funcionários:

Dados sem sentido:

* Salários Nulos
* Possíveis duplicatas (kleber pires)

Dados padronizados:





