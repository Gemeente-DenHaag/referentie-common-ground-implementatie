.. _cvs:

.. toctree::
   :maxdepth: 2


=========================================================
Concept samenwerking CVS en openformulieren
=========================================================


Mogelijke uitwerking van hoe de nieuwe MDH portal, CVS en openformulieren samen kunnen werken

Uitgangspunten:

* Formulier staat gedefinieerd in openformulieren
* Er is een PDC waarin een link van het product naar de formulierdefinitie staat; deze PDC is of onderdeel van CVS of onderdeel van de referentie architectuur.


***************
Aanvraagproces
***************


1. De gebruiker kiest het aan te vragen product; uit de PDC wordt opgehaald of gebruiker hier voldoende machtigingen voor heeft en welke formulierdefinitie hierbij hoort
2. De gebruiker opent het formulier met de zojuist opgehaalde definitie
3. De gebruiker vult het formulier in
4. De gebruiker verstuurd het formulier (naar OpenFormulieren)
5. Openformulieren slaat het formulier op in de ProductAanvraagRepository
6. Stap 5 triggert een notificatie 
7. CVS is geabbonneerd op deze notificatie en ontvangt deze (webhook)
8. Met de informatie in de notificatie haalt het CVS het ingevulde formulier op uit de ObjectApi

.. figure:: /images/graphviz/productaanvraag_cvs.svg
   :alt: Productaanvraag cvs
   :width: 600

   Schematische weergave productaanvraag CVS



**************
Toekomst: openzaak
**************

In een volgende fase zou CVS ook aan kunnen sluiten op OpenZaak. Wanneer CVS door middel van de :ref:`consistency` zaakupdates doet regelt die indien gewenst ook direct notificaties naar de gebruiker toe, actuele status in de portal en inzicht in de zaakstatus voor agents en belanghebbenden.


.. figure:: /images/graphviz/zaakupdate_cvs.svg
   :alt: Portal
   :width: 600

   Schematische weergave zaakupdate CVS icm Openzaak