
# UL-FFGG Format

Cette extension permet de générer des rapports en format PDF tout en respectant la mise en forme du [Guide de rédaction technique](https://www.scribd.com/document/791459777/Guide-de-Redaction-2012-2) du Département des sciences du bois et de la forêt.

## Prérequis

1. Téléchargez la dernière version de [Quarto](https://quarto.org/docs/get-started/).
2. Vérifiez la version de Quarto (>= 1.6).
   ```bash
   quarto --version
   ```
3. Mettez à jour Quarto si nécessaire.
   ```bash
   quarto update
   ```
4. Vérifiez l'environnement Quarto.
   ```bash
   quarto check
   ```

5. **Pour les utilisateurs de VS Code**, il est important d'installer `TinyTeX`.
   ```bash
   quarto install tinytex
   ```

## Installation

Pour installer l'extension et les exemples associés, utilisez la commande suivante : 
```bash
quarto use template bboily91/UL-FFGG_Extension/ul-ffgg
```

Cette commande installe l'extension et crée un répertoire contenant des exemples, à utiliser comme point de départ pour vos rapports.

Si vous travaillez déjà sur un projet existant et que le répertoire est déjà créé, exécutez cette commande dans le terminal depuis le répertoire de votre projet :
```bash
quarto install extension bboily91/UL-FFGG_Extension/ul-ffgg
```

<!--
## Utilisation

*TODO*: Describe how to use your format.

## Options de l'extension

*TODO*: If your format has options that can be set via document metadata, describe them. -->


## Exemple

Voici un exemple de rapport : [example.qmd](example.qmd). Cet exemple a été créé avec VS Code et Python.

## Documentation

- Pour commencer : [https://quarto.org/](https://quarto.org/)
- Exemples variés : [https://quarto.org/docs/gallery/](https://quarto.org/docs/gallery/)

