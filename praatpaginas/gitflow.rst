.. _gitflow:

.. toctree::
   :maxdepth: 2


=========================================================
Git Flow Den Haag
=========================================================

Bij de ontwikkeling en deployment van onze refenrtie architecuur volgen wij de branching strategie `Git Flow <https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow>`_ Een volledige uitleg is te vinden op de uitlegpagina van `Atlassian <https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow>`_ 
Hieronder een korte uitleg van onze toepassing

Schematisch ziet git flow er als hieronder uitgerold


.. figure:: /images/gitflow1.svg
   :alt: Productaanvraag cvs
   :width: 600

   Branching strategie


Qua deployment matchen branches met omgevingen volgens onderstaande overzicht:

- feature -> no deploy
- develop -> test
- release/* -> acc (na approval)
- hotfix/* -> acc (na approval)
- main -> prod (na approval)

Daarnaast kunnen feature branches ook op een testomgeving uitgerold worden wanneer de commit message eindigt op [deploy].

