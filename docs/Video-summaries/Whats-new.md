---
title: What's new - Paratext 9.3
sidebar_position: 1
slug: /Whats-new
---



## Paratext Live {#3569ffbece614e3ea7d9ca537ca4098c}


Paratext Live uses a couple of servers.

- Paratext 8, 9.0 and 9.1 use a server called Internet (secondary) WCF and Paratext 9.2 uses Internet (primary) AMQP.
	- _This is why you can't use Paratext Live with 9.2 and 9.1 at the same time_
- In Paratext 9.3 when you start Paratext live you choose what server you want to use.
	- **Internet (primary)**, which is 9.2 and 9.3.
	- **Internet (secondary)** which is 9.0, 9.1 or Paratext 8.

:::note


Everyone in a particular live session still needs to use the same server, it is just that from 9.3 you can work with someone on 9.1 or someone else on 9.2 (just not at the same time) 


:::


## Study Bible Additions {#0fb6f7f7c0e3488da453b45a956b6296}


The most obvious new feature the ability to **compare versions**.

1. Open a Study Bible Additions project
1. From the **Project** menu,
1. Under **Project**, choose **Compare Versions**
	- _The changes in the additions are displayed_.

## Scripture reference in navigation bar {#4d5fcfb04bec44c19515c177c6bdd151}


In Paratext 9.3 you can copy and paste a scripture reference into the navigation bar.

1. Copy the text of a reference (from another file)
1. Click in the **book name** in the navigation bar
1. Paste using **Ctrl+V**

	![](/notion_imgs/1158626626.png)


The reference should be in a format that matches the interface language.


For example,

- in English: MAT 12.3, Mrk 5:4, Galatians 1:12
- in Spanish: Romanos 8:28

:::note


The names must matches the names as they are seen in the titles.
Currently can't copy from Paratext, but that feature is being added to a later update. 


:::


## Parallel Passages Tool {#f128ec06729448a39c86ceb2b1d95286}

- The colours have changed from **green** to **grey**
- You can reduce or expand the Greek / Hebrew by clicking the little arrow.

	![](/notion_imgs/1036502882.png)


## Open a text collection {#7c9bcf7f18bc4e6e971c30d3934477bc}


There is a new menu item on the **main menu**


![](/notion_imgs/839941766.png)

1. From the **Paratext menu**
1. Choose **Open text collection**
	- _This window looks like what was used in earlier versions of Paratext_.
1. Open a previously **saved text collection** from the bottom left
1. You can still open a text collection from the **Open** window as well.

## Arranging windows {#cf7f84457e8f4a0dbf98d7159c2ccf6d}

- Arrange windows by **rows** as well as by **columns**.

:::tip

Remember to save your layout!

:::




![](/notion_imgs/1620979427.png)


## Floating Windows {#aeef371871884e29a31800b9c36de7ca}

- Dropdown to change the active project

	![](/notion_imgs/807351003.png)


### Other new/changed {#23f467384fc648b2a7082c83f10ea8c7}

- **RegEx Pal** - from Main menu &gt; Advanced or Project menu &gt; Advanced.
- **Synchronizing** with Logos and other compatible programs is now turned **on by default**
- Changes have been made to help with the localization of the help files and the user interface
- **Bible modules** can now handle **chapter markers** in the extra books
