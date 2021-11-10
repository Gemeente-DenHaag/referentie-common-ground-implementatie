.. _cvs:


.. toctree::
   :maxdepth: 2


===============
Concept samenwerking CVS en openformulieren
===============

Mogelijke uitwerking van hoe de nieuwe MDH portal, CVS en openformulieren samen kunnen werken

Uitgangspunten:

* Formulier staat gedefinieerd in openformulieren
* Er is een PDC waarin een link van het product naar de formulierdefinitie staat; deze PDC is of onderdeel van CVS of onderdeel van de referentie architectuur.

Aanvraagproces

1. De gebruiker kiest het aan te vragen product; uit de PDC wordt opgehaald welke formulierdefinitie hierbij hoort
2. De gebruiker opent het formulier met de zojuist opgehaalde definitie
3. De gebruiker vult het formulier in
4. De gebruiker verstuurd het formulier (naar OpenFormulieren)
5. Openformulieren slaat het formulier op in de objectapi
6. Stap 5 triggert een notificatie 
7. CVS is geabbonneerd op deze notificatie en ontvangt deze
8. Met de informatie in de notificatie haalt het CVS het ingevulde formulier op uit de ObjectApi

.. image:: /images/graphviz/productaanvraag_cvs.svg
   :alt: Portal
   :width: 600
