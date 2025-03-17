---
title: C. Marqueurs communs de l'USFM
sidebar_position: 2
slug: /AppC.USFM
---

:::note

- Tous les styles de type "Paragraphe" requièrent l'utilisation de la touche "Entrée" lors du choix du marqueur en vue "Standard".
- Tous les types de style "Note" et "Caractère" nécessitent l'utilisation de la touche "Barre oblique inversée" lors du choix du marqueur en vue "Standard".

:::

| USFM | Description                                                 | Style      |
| ---- | ----------------------------------------------------------- | ---------- |
| \id  | Fichier - Identification                                    | Paragraphe |
| \h   | Fichier - En-tête                                           | Paragraphe |
| \c   | Numéro de chapitre                                          | Paragraphe |
| \v   | Numéro du verset                                            | Caractère  |
| \p   | Paragraphe - Normal - Retraite de première ligne            | Paragraphe |
| \m   | Paragraphe - à la marge - sans retrait de la première ligne | Paragraphe |
| \q1  | Poésie - Retrait Niveau 1                                   | Paragraphe |
| \q2  | Poésie - Retrait Niveau 2                                   | Paragraphe |
| \r   | Titre - Références parallèles                               | Paragraphe |
| \s1  | Titre - Section Niveau 1                                    | Paragraphe |
| \s2  | Titre - Section Niveau 2                                    | Paragraphe |
| \mt1 | Titre principal niveau 1                                    | Paragraphe |
| \mt2 | Titre principal niveau 2                                    | Paragraphe |
| \mt3 | Titre principal niveau 3                                    | Paragraphe |

## Less-common Markers {#e86265f707e24d699845d9ddecf69de2}

| USFM | Description                                               | Style      |
| ---- | --------------------------------------------------------- | ---------- |
| \pc  | Paragraphe - Centré (pour Inscription) | Paragraphe |
| \nb  | Paragraphe - Pas de rupture avec le Paragraphe précédent  | Paragraphe |
| \li  | Entrée de liste - Niveau 1                                | Paragraphe |

## Introduction Markers {#93551ca206c1421dacac7e7922e83bd8}

| USFM  | Description                                                     | Style      |
| ----- | --------------------------------------------------------------- | ---------- |
| \imt1 | Introduction - Titre principal Niveau 1                         | Paragraphe |
| \iot  | Introduction - Titre du plan d'ensemble                         | Paragraphe |
| \io1  | Introduction - Plan d'ensemble niveau 1                         | Paragraphe |
| \io2  | Introduction - Plan d'ensemble niveau 2                         | Paragraphe |
| \ip   | Introduction - Paragraphe                                       | Paragraphe |
| \im   | Introduction - Paragraphe - pas d'indentation de première ligne | Paragraphe |
| \ipq  | Introduction - Paragraphe - Citation tirée du texte             | Paragraphe |

## Cross Reference Markers {#7582640cf3fe4b3993dbb6b460d40d4c}

| USFM | Description                | Style     |
| ---- | -------------------------- | --------- |
| \x   | Renvoi                     | Note      |
| \xo  | Renvoi - référence origin  | Caractère |
| \xt  | Renvoi - références cibles | Caractère |
| \x\* | Renvoi - Fin               | Note      |

## Figure/Illustration Markers {#4e91568268b54c8ea70f81c80a0061f4}

| USFM   | Description                                 | Style |
| ------ | ------------------------------------------- | ----- |
| \fig   | Auxiliaire – Image/Illustration/Carte       | Note  |
| \fig\* | Auxiliaire – Fin d'Image/Illustration/Carte | Note  |

## Footnote Markers {#829f632d730b4db2902aca9a8607a085}

| USFM | Description                                        | Style     |
| ---- | -------------------------------------------------- | --------- |
| \f   | Paragraphe                                         | Note      |
| \fr  | Note de bas de page - Reference                    | Caractère |
| \ft  | Note de bas de page - Texte                        | Caractère |
| \fk  | Note de bas de page - Mot clé                      | Caractère |
| \fq  | Note de bas de page - Citation du texte            | Caractère |
| \fqa | Note de bas de page - Autre traduction équivalente | Caractère |
| \f\* | Fin de la note de bas de page                      | Note      |

## Glossary {#b27a3c455de340b9bdd33a5e92353b91}

| USFM      | Description                                                                     | Style      |
| --------- | ------------------------------------------------------------------------------- | ---------- |
| \k … \k\* | Mot clé (citation dans le glossaire)                         | Caractère  |
| \w … \w\* | Marquer un mot dans le glossaire (dans le texte)             | Caractère  |
| \p        | Paragraphe                                                                      | Paragraphe |
| \li1      | Entrée de liste - Niveau 1 (pour la définition du glossaire) | Paragraphe |
| \li2      | Entrée de liste - Niveau 2 (pour la définition du glossaire) | Paragraphe |

