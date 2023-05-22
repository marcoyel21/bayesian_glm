setwd("/Users/jesusenriquemirandablanco/Documents/maestria/cuarto/proyecto/bayesian_glm/src/")

library(rstan)
library("shinystan")
library(caret)

df <- read.csv("../data/datos_filtados_1.csv")
dummy <- dummyVars(" ~ .", data=df)
final_df <- data.frame(predict(dummy, newdata=df))

final_df$tasa_ponderada <- as.numeric(final_df$tasa_ponderada)
final_df$dl_generoMasculino <- as.numeric(final_df$dl_generoMasculino)
final_df$dat_ai_edad_acred <- as.numeric(final_df$dat_ai_edad_acred)
final_df$pct_enganche <- as.numeric(final_df$pct_enganche)

model <- stan_model("model_4.stan")

stan_data <- list(
  N = nrow(final_df),
  tasa_ponderada = final_df$tasa_ponderada,
  dl_generoMasculino = final_df$dl_generoMasculino,
  dat_ai_edad_acred = final_df$dat_ai_edad_acred,
  pct_enganche = final_df$pct_enganche
)

fit <- sampling(
  model, 
  data = stan_data,
  thin = 1,
  chains = 2,
  warmup=1000,
  iter = 5000,
  seed=4595,
  # algorithm="HMC"
)

saveRDS(fit, file = "model_4.rds")

loaded_fit <- readRDS(file = "model_4.rds")
launch_shinystan(loaded_fit)