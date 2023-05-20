data{
    int n;
    real<lower=0> tasa[n];
    real<lower=0> edad[n];
    real<lower=0> ingreso[n];
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
   vector[10] d_destino;
   
}


model{
    vector[5] c;
    int k_dest;
    c[1] = alpha;
    c[2] = bE;
    c[3] = bI;
    c[4] = bVV;
    c[5] = bMC;
    real m[n];
    
    for(i in 1:n){
        tasa[i] ~beta(a,a*(1-m[i])/m[i]);
        m[i] = alpha + bE * edad[i] + bI * ingreso[i] + bVV *valor_viv[i] + bMC * monto_cred[i] + d_destino[destino[i]];
    }
    for(k in 1:10){
        d_destino[k] ~ normal(0,1);
    }

    bE ~normal(0,1);
    bI ~normal(0,1);
    bVV ~normal(0,1);
    bMC ~normal(0,1);
    alpha ~normal(0,1);
    a ~ gamma(0.01,0.01);
    c ~ normal(0,1);

}

