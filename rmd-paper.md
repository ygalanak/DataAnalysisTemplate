---
title: "Example paper from R Markdown"
author:
- name: Author 1
  affiliation: University of Whatever
  email: author1@example.ac.uk
- name: Author 2
  affiliation: University of Wherever
  email: author2@example2.ac.uk
date: 15 February, 2022
published: Working paper.
title-page: true
git-repo: https://github.com/ygalanak/DataAnalysisTemplate
code-repo: "Access the code at <https://github.com/ygalanak/DataAnalysisTemplate>"
abstract: >-
  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
reference-section-title: References
mainfont: Spectral
sansfont: Open Sans
thanks: >-
    We thank x, y and $z$
keywords: k1; k2; k3
thanks: >-
  I thank $x$, $y$. Financial support from $z$ is greatly acknowledged.
correspondence: >-
  Correspondence concerning this article should be addressed to corresponding author. Contact: <author1@example.ac.uk>.
---

<!-- rmd-paper.md is generated from rmd-paper.Rmd. Only edit the .Rmd file, *not* the .md file. -->





# Introduction

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua [@HeissKelley:2017]. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat [@KeckSikkink:1998]. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur [@Heiss:2019].



![Scatterplot showing the relationship between city and highway miles per gallon](figs-tbls/mpg-plot.pdf){#fig:mpg-plot}


Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam (see @fig:mpg-plot), eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. 

$$ 
\text{This is a test} = \beta_1 x_1 + \varepsilon 
$$

Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. 

# New section

Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? 

## Subsection

In @tbl:mytable, quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?



!include figs-tbls/mytable.md

At vero eos et^[This is a footnote with an in-text reference @HeissKelley:2017.] accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. 

## Subsection again

Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est^[This is a footnote.], omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.

!include 'sections/conclusion.md'

\newpage


