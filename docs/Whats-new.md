---
title: What's new - Paratext 9.3
sidebar_position: 1
slug: /Whats-new
---



## Paratext Live {#16154c54093a4476b7397c214e78e49f}


Paratext Live uses a couple of servers.

- Paratext 8, 9.0 and 9.1 use a server called Internet (secondary) WCF and Paratext 9.2 uses Internet (primary) AMQP.
	- _This is why you can't use Paratext Live with 9.2 and 9.1 at the same time_
- In Paratext 9.3 when you start Paratext live you choose what server you want to use.
	- **Internet (primary)**, which is 9.2 and 9.3.
	- **Internet (secondary)** which is 9.0, 9.1 or Paratext 8.

:::note


Everyone in a particular live session still needs to use the same server, it is just that from 9.3 you can work with someone on 9.1 or someone else on 9.2 (just not at the same time) 


:::


## Study Bible Additions {#8c8628c57aa04e48b5d33488872d0b29}


The most obvious new feature the ability to **compare versions**.

1. Open a Study Bible Additions project
1. From the **Project** menu,
1. Under **Project**, choose **Compare Versions**
	- _The changes in the additions are displayed_.

## Scripture reference in navigation bar {#3c00a0202ad949bc8909f66660badb73}


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


## Parallel Passages Tool {#f660aff19a7541efaa453398f11dbacd}


<div class='notion-row'>
<div class='notion-column' style={{width: 'calc((100% - (min(32px, 4vw) * 1)) * 0.5)'}}>

- The colours have changed from **green** to **grey**

- You can reduce or expand the Greek / Hebrew by clicking the little arrow.

</div><div className='notion-spacer' />

<div class='notion-column' style={{width: 'calc((100% - (min(32px, 4vw) * 1)) * 0.5)'}}>

![](/notion_imgs/1036502882.png)

</div><div className='notion-spacer' />
</div>


## Open a text collection {#fd1736d1bd07444fb6902b8dccf951dc}


There is a new menu item on the **main menu**

1. From the **Paratext menu**

<div class='notion-row'>
<div class='notion-column' style={{width: 'calc((100% - (min(32px, 4vw) * 1)) * 0.5)'}}>

1. Choose **Open text collection**

</div><div className='notion-spacer' />

<div class='notion-column' style={{width: 'calc((100% - (min(32px, 4vw) * 1)) * 0.5)'}}>

![](/notion_imgs/839941766.png)

</div><div className='notion-spacer' />
</div>

1. Open a previously **saved text collection** from the bottom left
1. You can still open a text collection from the **Open** window as well.

## Arranging windows {#b526a01da9e04357804f4849c39f2fdc}

- Arrange windows by **rows** as well as by **columns**.

:::tip

Remember to save your layout!

:::




![](/notion_imgs/1620979427.png)


## Floating Windows {#493f51aae2f5480893f25897c408c26c}

- Dropdown to change the active project

	![](/notion_imgs/807351003.png)


### Other new/changed {#4796465de7ac4f3190c47faa4b9750b8}

- **RegEx Pal** - from Main menu &gt; Advanced or Project menu &gt; Advanced.
- **Synchronizing** with Logos and other compatible programs is now turned **on by default**
- Changes have been made to help with the localization of the help files and the user interface
- **Bible modules** can now handle **chapter markers** in the extra books
