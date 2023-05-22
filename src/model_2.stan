data {
  int<lower=0> N;              // Number of observations
  vector[N] tasa_ponderada;    // Response variable
  vector[N] pct_enganche;      // Predictor variable 1
  vector[N] dat_ai_edad_acred;              // Predictor variable 2
}

parameters {
  real alpha;                  // Intercept
  real beta_1;                 // Coefficient for predictor 1
  real beta_2;                 // Coefficient for predictor 2
  real<lower=0> sigma;         // Error standard deviation
}

model {
  // Prior distributions
  alpha ~ normal(0, 10);
  beta_1 ~ normal(0, 10);
  beta_2 ~ normal(0, 10);
  sigma ~ cauchy(0, 2.5);

  // Likelihood
  tasa_ponderada ~ normal(alpha + beta_1 * pct_enganche + beta_2 * dat_ai_edad_acred, sigma);
}


