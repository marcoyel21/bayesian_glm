data{
    int n;
    int k_dest;
    real tasa[n];
    real edad[n];
    real ingreso[n];
    real valor_viv[n];
    real monto_cred[n];
    int destino[n];
    }

parameters {
   real bE;
   real bI;
   real bVV;
   real bMC;
   real<lower=0> a;
   real alpha;
   real d_destino[10];
   real s;
   
}


model{
    real m[n];
    
    for(i in 1:n){
        tasa[i] ~normal(inv_logit(m[i]),s);
        m[i] = alpha + bE * edad[i]; #+ bI * ingreso[i] + bVV *valor_viv[i] + bMC * monto_cred[i]; # + d_destino[destino[i]]);
    }
    // for(k in 1:10){
    //     d_destino[k] ~ normal(0,1);
    // }
    s ~gamma(0.1,0.1);
    bE ~normal(0,10);
    bI ~normal(0,10);
    bVV ~normal(0,10);
    bMC ~normal(0,10);
    alpha ~normal(0,10);
    a ~ gamma(0.01,0.01);

}

