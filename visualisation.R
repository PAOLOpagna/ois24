# -*- coding: utf-8 -*-
# ---
# jupyter:
#   jupytext:
#     text_representation:
#       extension: .R
#       format_name: light
#       format_version: '1.5'
#       jupytext_version: 1.15.1
#   kernelspec:
#     display_name: R
#     language: R
#     name: ir
# ---

# +
# Charger la bibliothèque ggplot2
library(ggplot2)

# Créer un jeu de données exemple
df <- data.frame(
  value = rnorm(300),
  group = rep(letters[1:3], each = 100)
)

# Créer un histogramme avec facettes
p <- ggplot(df, aes(x = value, fill = group)) +
  geom_histogram(binwidth = 0.5, alpha = 0.7, position = "identity") +
  facet_wrap(~ group) +
  theme_minimal() +
  labs(title = "Histogramme avec Facettes", x = "Valeur", y = "Fréquence")

# Sauvegarder le graphique dans un fichier
ggsave("histogram_facets.png", plot = p)

# Afficher le graphique dans l'environnement R
print(p)


# -


