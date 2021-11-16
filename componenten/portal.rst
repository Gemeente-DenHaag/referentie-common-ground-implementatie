.. _portal:


==========================================================================
Portal (PWA)
==========================================================================


.. toctree::
   :maxdepth: 3



Onderdeel van onze oplossing is een nieuwe portal. In deze portal kunnen burgers en bedrijven nadat ze ingelogd zijn met DigiD of eHerkenning direct hun eigen zaken regelen.

.. figure:: /images/portal.png
   :alt: Portal

   Schermafbeelding van de portal



De portal is een react app gebouwd waarvan de voorkant het NL Design System gebruikt. Met behulp van `Design tokens <https://css-tricks.com/what-are-design-tokens/>`_ kan de vormgeving volgens de huisstijl van de gemeente getoond worden.
In de portal kun je op dit moment:

* Nieuwe zaken aanmaken. 
* De status van je zaken volgen.
* Het downloaden van documenten behorende bij een zaak


De portal is op dit moment in volle ontwikkeling, in de komende tijd gaan we de volgende functionaliteiten toevoegen:

* Taken uitvoeren binnen een zaak, zoals bijvoorbeeld een extra document toevoegen.
* Producten weergeven uit de product api's.
* Notificaties op producten en zaken.
* Pushberichten
* Betaalflows
* Rijkere content zoals bijvoorbeeld wijkberichten

Met :ref:`plugins` is het mogelijk om de functionaliteit van de portal zelf uit te breiden.