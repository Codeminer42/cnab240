module Cnab240::V86
  class SegmentoO < BinData::Record

    include Cnab240::DefaultMixin
    include Cnab240::SegmentoMixin

    lstring :controle_banco, :length => 3, :pad_byte => '0'
    lstring :controle_lote, :length => 4, :pad_byte => '0'
    string :controle_registro, :length => 1, :initial_value => '3', :pad_byte => '0'

    lstring :servico_numero_registro, :length => 5, :pad_byte => '0'
    lstring :servico_codigo_segmento, :length => 1, :initial_value => 'O', :pad_byte => ' '
    lstring :servico_tipo_movimento, :length => 1, :pad_byte => '0'
    lstring :servico_codigo_movimento, :length => 2, :pad_byte => '0'

    string :codigo_barras, :length => 44, :pad_byte => ' '
    string :nome_concessionaria, :length => 30, :pad_byte => ' '
    lstring :data_vencimento, :length => 8, :pad_byte => '0'
    lstring :data_pagamento, :length => 8, :pad_byte => '0'
    lstring :valor_pagamento, :length => 15, :pad_byte => '0'
    string :seu_numero, :length => 20, :pad_byte => ' '
    string :nosso_numero, :length => 20, :pad_byte => ' '

    string :cnab_g004_1, :length => 68, :pad_byte => ' '
    string :ocorrencias, :length => 10, :pad_byte => ' '
  end
end