---
title: AM 8. Convertir le projet
sidebar_position: 7
slug: /MA-8CP
---

# **CV: Convert a Project** {#238598a5fd4080aa8ca3d773eab1eca5}

**8.1 Introduction**

If you ever need to rename your project, reduce its size, change user names, change the encoding, or struggle with compound/decompound diacritics, the **Convert Project** tool will help you solve these problems.

Où en sommes-nous

Vous devez être l’administrateur du projet à faire ces conversions.

_**Why is this skill important?**_

Only a few changes can be made to the project in the project's **Properties and settings**. Les changements majeurs nécessitent qu’un nouveau projet soit créé. The **Convert project** tool allows the new project to retain the project history.

_**Qu’est-ce qu’on va faire ?**_

Nous allons travailler les six changements qui peuvent être apportés à votre projet.

- Changer le nom abrégé du projet
- Retirer les fichiers effacés de l'historique de projet
- Nettoyer historique de Paratext Live
- Convertir l’encodage à 65001 — Unicode [UTF8]
- Normalisation — composé ou décomposée
- Remplacement de vieux noms d’utilisateur

## **8.2 The ‘Convert Project’ dialogue box** {#238598a5fd4080caa41df545077c6949}

- **Tab** under **Tools**, select **Advanced**, then **Convert Project**

### **8.2.1 Change the short name of the project** {#238598a5fd40804fab07c9e96a03d3e3}

- Confirm that the old project name is correct. [If not, close the dialogue box, click on the correct project window and go to the New dialogue box.]
- Enter the new short name for the project in **[1]**.

### **8.2.2 Scan for deleted files in project history** {#238598a5fd4080558d85d375865a60b9}

- **[2]** Select this option if you have deleted files [such as large illustrations] that you no longer want to be part of the project history.

### **8.2.3 Clean up Paratext Live history** {#238598a5fd40805eadb1e31066da98e3}

- **[3]** Select this option if you have edited the project with Paratext Live and want to replace the names in the project history.

### **8.2.4 Convert encoding to 65001 — Unicode [UTF8]** {#238598a5fd408074b0f8d3485d39832d}

- **[4]** Select this option to convert a standard Unicode encoding project.

:::tip

<aside> 💡 Cela ne fonctionnera pas pour modifier l’encodage si votre projet comporte une « police piratée ». Normalisation – composed or decomposed.

:::

### **8.2.5 Normalisation** {#238598a5fd408022a4cdfa3928de338b}

- **[5]** Select Compound [NFC] or one of the options in the drop-down list if the data in your project contains a mixture of compound and decomposed characters.

### **8.2.6 Replacing old user names** {#238598a5fd4080a29338d87b3b6f865e}

- **[6]** Select the name of the user you want to replace from the drop-down list.
- **[7]** Type the name of a registered Paratext user in this box.
- **[8]** Click **Add**,

un résumé du remplacement s’affiche avec un bouton "Retirer".

- [If you make a mistake when typing the name in the **With** field or decide not to make the replacement, click **Remove**].

## **8.3 Converting a project** {#238598a5fd4080c5af98e42c78124f28}

- [9] Click **OK** to convert the project.

:::tip

See the note in the guide about shared projects.

:::



