
# UL-FFGG Format

Cette extension permet de générer des rapports en format PDF tout en respectant la mise en forme du [Guide de rédaction technique](https://www.scribd.com/document/791459777/Guide-de-Redaction-2012-2) du Département des sciences du bois et de la forêt.

## Prérequis

1. Téléchargez la dernière version de [Quarto](https://quarto.org/docs/get-started/).

2. Vérifiez la version de Quarto (>= 1.6).
   ```bash
   quarto --version
   ```

3. Installez `TinyTeX`.
   ```bash
   quarto install tinytex
   ```

4. Vérifiez l'environnement Quarto.
   ```bash
   quarto check
   ```

## Installation

Ouvrez une session RStudio et aller dans le terminal.

Pour installer l'extension et les exemples associés, utilisez la commande suivante : 
```bash
quarto use template bboily91/UL-FFGG_Extension/ul-ffgg
```

Cette commande installe l'extension et crée un répertoire contenant des exemples, à utiliser comme point de départ pour vos rapports.

Si vous travaillez déjà sur un projet existant et que le répertoire est déjà créé, exécutez cette commande dans le terminal depuis le répertoire de votre projet :
```bash
quarto install extension bboily91/UL-FFGG_Extension/ul-ffgg
```
## Utilisation

Les options `yaml`:
```yaml
title: "Rapport de session"
bibliography: references.bib   # Chemin relatif du fichier des références
biblio-style: apa              # Style de la bibliographie
format:
  ul-ffgg-pdf:                 # Format du rapport (Obligatoire)
    toc: true                  # Table des matières
    lof: true                  # Liste des figures
    lot: true                  # Liste des tableaux
    indent: true               # Indentation de la première ligne des paragraphes
    number-sections: true      # Numérotation des sections et sous-sections
logo: logo-quarto              # Nom du fichier du logo à mettre dans la page titre (Optionnel)
logo_size: "1.5cm"             # Taille du logo (Optionnel)
author:                        # Liste des auteurs
  - name: Benjamin
copyright:                     # Ajoute un copyright dans le pied de page (Optionnel)
  holder: Benjamin
  year: 2025
professor: Albert Einstein
date: last-modified
keep-tex: true                 # Garde les fichiers .tex générés 

```

Dans le cas où il y a plus d'un auteur, utilisez la syntaxe suivante.
```yaml
author: 
  - name: Benjamin
  - name: Bob
```
Ajouter une page préliminaire de résumé et une page préliminaire de remerciement. Le caractère `|` permet d'ajouter le contenu en texte brut. Le texte doit être indenté de 2 espaces.
```yaml
abstract: |                    # Ajoute une section résumé dans les pages préliminaires (Optionnel)
  Lorem  ipsum  dolor...
remerciement: |                # Ajoute une section remerciement dans les pages préliminaires (Optionnel)
  Lorem  ipsum  dolor...
```

Pour générer un rapport en format PDF, utilisez la commande suivante :
```bash
quarto render example_RStudio.qmd
```

## Utilisation avec python et VS Code

Ouvrir un terminal et activez l'environnement virtuel.
```bash
source chemin/vers/votre/environnement/virtuel/bin/activate   # Sous Linux & macOS
.\chemin\vers\votre\environnement\virtuel\Scripts\activate    # Sous Windows
```
S'assurer d'avoir les librairies nécessaires.
```bash
python3 -m pip install jupyter matplotlib plotly     # Sous Linux & macOS
py -m pip install jupyter matplotlib plotly          # Sous Windows
```

Lancez une session VS Code.
```bash
cd chemin/vers/votre/projet
code .
```

Ajoutez cette ligne à la fin du `yaml`
```yaml
jupyter: python3     # Sous Linux & macOS
jupyter: python      # Sous Windows
```
### Exemple

Voici un exemple de rapport : [example_VSCode.qmd](example_VSCode.qmd). Cet exemple a été créé avec VS Code et Python.

## Générer le ficher `references.bib`

À partir de [Zotero](https://docs.zotero-fr.org/kb/exporting/#), exportez la collection dans le format `BibTeX` et nommez le fichier `references.bib`. Mettez le fichier dans le répertoire principal de votre projet.

## Documentation

- Pour commencer : [https://quarto.org/](https://quarto.org/)
- Exemples variés : [https://quarto.org/docs/gallery/](https://quarto.org/docs/gallery/)

