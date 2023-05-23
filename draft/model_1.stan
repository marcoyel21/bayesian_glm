data {
  int<lower=0> N;              // Number of observations
  vector[N] tasa_ponderada;    // Response variable
  vector[N] pct_enganche;      // Predictor variable
}

parameters {
  real alpha;                  // Intercept
  real beta;                   // Coefficient for predictor
  real<lower=0> sigma;         // Error standard deviation
}

model {
  // Prior distributions
  alpha ~ normal(0, 10);
  beta ~ normal(0, 10);
  sigma ~ cauchy(0, 2.5);

  // Likelihood
  tasa_ponderada ~ normal(alpha + beta * pct_enganche, sigma);
}
