// Hierarchical Models without Predictors
data {
  int<lower=0> N;               // Number of observations
  vector[N] tasa_ponderada;                  // Response variable
  vector[N] genero;                  // Response variable
  int<lower=1> J_1;               // Number of groups
  int<lower=1, upper=J_1> index_1[N]; // Grouping variable for each observation
}

parameters {
  vector[J_1] mu;                 // Group-specific means
  vector[J_1] beta_gender;                 // Group-specific gender effect
  real<lower=0> sigma;          // Common standard deviation

}

model {
  // Priors
  mu ~ normal(0, 10);
  beta_gender ~ normal(-2, 2);
  sigma ~ cauchy(0, 5);

  // Likelihood
  for (n in 1:N) {
    tasa_ponderada[n] ~ normal(mu[index_1[n]] + beta_gender[index_1[n]]*genero, sigma);
  }
}