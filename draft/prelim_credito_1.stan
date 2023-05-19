data{
    int n;
    array[n] real tasa;
    array[n] int edad;
    array[n] real ingreso;
    array[n] real valor_viv;
    array[n] real monto_cred;
    array[n] int destino;]

 list0={'tasa':df1['tasa_ponderada'], 'ingreso': df1['dat_ingreso_mensual_bruto'],
       'valor_viv': df1['dat_valor_vivienda_originacion'], 'monto_cred': df1['dat_monto_orig_cred'],
       'destino':df1['dl_destino_credito']}}