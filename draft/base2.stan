data {
    int<lower=1> N; //the number of observations
    int<lower=1> J; //the number of groups
    int<lower=1> K; //number of columns in the model matrix
    int<lower=1, upper=J> id[N]; // Grouping variable for each observation
    matrix[N,K] X; //the model matrix
    vector[N] y; //the response variable
  }
parameters {
  vector[K] gamma; //population-level regression coefficients
  vector<lower=0>[K] tau; //the standard deviation of the regression coefficients
  vector[K] beta_raw[J];
  real<lower=0> sigma; //standard deviation of the individual observations
}
transformed parameters {
  vector[K] beta[J]; //matrix of group-level regression coefficients
  //computing the group-level coefficient, based on non-centered parameterization based on section 22.6 STAN (v2.12) user's guide
  for(j in 1:J){
    beta[j] = gamma + tau .* beta_raw[j];
  }
}
model {
  vector[N] mu; //linear predictor
  //priors
  gamma ~ normal(0,5); //weakly informative priors on the regression coefficients
  tau ~ cauchy(0,2.5); //weakly informative priors, see section 6.9 in STAN user guide
  sigma ~ gamma(2,0.1); //weakly informative priors, see section 6.9 in STAN user guide
  for(j in 1:J){
   beta_raw[j] ~ normal(0,1); //fill the matrix of group-level regression coefficients;
   //implies beta~normal(gamma,tau)
  }
  for(n in 1:N){
    mu[n] = X[n] * beta[id[n]]; //compute the linear predictor using relevant group-level regression coefficients
  }
  //likelihood
  y ~ normal(mu,sigma);
}