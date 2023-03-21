---
lang: fr
title: C - USFM Marqueurs fréquents
pagination_next: null 
---
:::tip Remarque
-  Tous les styles de type **Paragraphe** nécessitent l'utilisation de la touche **Entrée** lors du choix du marqueur en vue **Standard**.
-  Tous les types de style **Note** et **Caractère** nécessitent l'utilisation de la touche **antislash** lors du choix du marqueur en vue **Standard**.
:::
| USFM  | Description                                              | Type       |
|-------|----------------------------------------------------------|------------|
| \\id  | Fichier - Identification                                 | Paragraphe |
| \\h   | Fichier - En-tête                                        | Paragraphe |
| \\c   | Numéro de chapitre                                       | Paragraphe |
| \\v   | Numéro du verset                                         | Caractère  |
| \\p   | Paragraphe - Normal - Retraite de première ligne         | Paragraphe |
| \\m   | Paragraphe - à la marge - sans retrait de la première ligne | Paragraphe |
| \\q1  | Poésie - Retrait Niveau 1                                | Paragraphe |
| \\q2  | Poésie - Retrait Niveau 2                                | Paragraphe |
| \\r   | Titre - Références parallèles                            | Paragraphe |
| \\s1  | Titre - Section Niveau 1                                 | Paragraphe |
| \\s2  | Titre - Section Niveau 2                                 | Paragraphe |
| \\mt1 | Titre principal niveau 1                                 | Paragraph  |
| \\mt2 | Titre principal niveau 2                                 | Paragraph  |
| \\mt3 | Titre principal niveau 3                                 | Paragraph  |


### Marqueurs moins fréquents

| USFM | Description                                              | Type       |
|------|----------------------------------------------------------|------------|
| \\pc | Paragraphe - Centré (pour Inscription)                   | Paragraphe |
| \\nb | Paragraphe - Pas de rupture avec le Paragraphe précédent | Paragraphe |
| \\li | Entrée de liste - Niveau 1                               | Paragraphe |


### Marqueurs d'introduction   

| USFM   | Description                                                     | Type       |
|--------|-----------------------------------------------------------------|------------|
| \\imt1 | Introduction - Titre principal Niveau 1                         | Paragraphe |
| \\iot  | Introduction - Titre du plan d'ensemble                         | Paragraphe |
| \\io1  | Introduction - Plan d'ensemble niveau 1                         | Paragraphe |
| \\io2  | Introduction - Plan d'ensemble niveau 2                         | Paragraphe |
| \\ip   | Introduction - Paragraphe                                       | Paragraphe |
| \\im   | Introduction - Paragraphe - pas d'indentation de première ligne | Paragraphe |
| \\ipq  | Introduction - Paragraphe - Citation tirée du texte             | Paragraphe |

 

### Marquers de renvoi

| USFM  | Description              | Type      |
|-------|--------------------------|-----------|
| \\x   | Renvoi                   | Note      |
| \\xo  | Renvoi - référence origin  | Caractère |
| \\xt  | Renvoi - références cibles | Caractère |
| \\x\* | Renvoi                   | Note      |


### Marquers Figure/Image
| USFM    | Description                                 | Type |
|---------|---------------------------------------------|------|
| \\fig   | Auxiliaire – Image/Illustration/Carte       | Note |
| \\fig\* | Auxiliaire – Fin d'Image/Illustration/Carte | Note |


### Marquers Note de bas de page

| USFM  | Description                                                   | Type      |
|-------|---------------------------------------------------------------|-----------|
| \\f   | Note de bas de page                                           | Note      |
| \\fr  | Note de bas de page - Reference                               | Caractère |
| \\ft  | Note de bas de page - Texte                                   | Caractère |
| \\fk  | Note de bas de page - Mot clé                                 | Caractère |
| \\fq  | Note de bas de page - Citation ou Équivalent alternatif       | Caractère |
| \\fqa | Note de bas de page - Équivalent de la traduction alternative | Caractère |
| \\f\* | Fin de la note de bas de page                                 | Note      |

### Glossaire  

| USFM          | Description                                                  | Type       |
|---------------|--------------------------------------------------------------|------------|
| \\k … k\*   | Mot clé (citation dans le glossaire)                         | Caractère  |
| \\w … \\w\* | Marquer un mot dans le glossaire (dans le texte)             | Caractère  |
| \\p           | Paragraphe                                                   | Paragraphe |
| \\li1         | Entrée de liste - Niveau 1 (pour la définition du glossaire) | Paragraphe |
| \\li2         | Entrée de liste - Niveau 2 (pour la définition du glossaire) | Paragraphe |
