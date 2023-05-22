setwd("/Users/jesusenriquemirandablanco/Documents/maestria/cuarto/proyecto/bayesian_glm/src/")

library(rstan)
library("shinystan")

df <- read.csv("../data/datos_filtados_1.csv")

df$tasa_ponderada <- as.numeric(df$tasa_ponderada)
df$pct_enganche <- as.numeric(df$pct_enganche)


model <- stan_model("model_1.stan")


stan_data <- list(
  N = nrow(df),
  tasa_ponderada = df$tasa_ponderada,
  pct_enganche = df$pct_enganche
)


fit <- sampling(
  model, 
  data = stan_data,
  thin = 6,
  chains = 2,
  warmup=2000,
  iter = 10000,
  seed=4595,
  # algorithm="HMC"
  )

saveRDS(fit, file = "model_1.rds")

loaded_fit <- readRDS(file = "model_1.rds")
launch_shinystan(loaded_fit)


# summary(fit)
# plot(fit)
# traceplot(fit)
# traceplot(fit, pars = c("alpha", "beta"),  nrow = 2)
# print(fit)
