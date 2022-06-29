.. _portal:


==========================================================================
Klantportaal (PWA)
==========================================================================


.. toctree::
   :maxdepth: 3



Onderdeel van onze oplossing is een nieuwe portal. In deze portal kunnen burgers en bedrijven nadat ze ingelogd zijn met DigiD of eHerkenning direct hun eigen zaken regelen.



De portal is een react app gebouwd waarvan de voorkant het NL Design System gebruikt. Met behulp van `Design tokens <https://css-tricks.com/what-are-design-tokens/>`_ kan de vormgeving volgens de huisstijl van de gemeente getoond worden. 
De data in de portal is afkomstig uit de  `ZGW api's <https://vng-realisatie.github.io/gemma-zaken/standaard/>`_ 

De portal heeft op dit moment de volgende functionaliteiten

* Inloggen met DigiD
* Inloggen met DigiD Machtigen
* Inloggen met eHerkenning
* Het volgen van zaken, en het inzien van de status van een zaak
* Het tonen van HaalCentraal informatie van de ingelogde gebruiker
* Bestanden downloaden die bij een zaak horen
* Het uitvoeren van een gebruikerstaak, bijvoorbeeld een bestand uploaden


De portal is op dit moment in volle ontwikkeling, in de komende tijd gaan we de volgende functionaliteiten toevoegen:

* Notificaties op producten en zaken.
* Pushberichten
* Betaalflows
* Rijkere content zoals bijvoorbeeld wijkberichten

Met :ref:`plugins` is het mogelijk om de functionaliteit van de portal zelf uit te breiden.

.. figure:: /images/schermafbeeldingenportal/inloggen.png
   :alt: Inlogscherm

   Inloggen via keycloak op diverse inlogmiddelen

.. figure:: /images/schermafbeeldingenportal/portal.png
   :alt: Portal

   Schermafbeelding van de klantportaal

.. figure:: /images/schermafbeeldingenportal/zaakdetailsportal.png
   :alt: Zaakdetails in de portal

   Schermafbeelding het detailsscherm van een zaak in de klantportaal

   .. figure:: /images/schermafbeeldingenportal/taakportal1.png
   :alt: Taakoverzicht in de portal

   Schermafbeelding van gebruikerstaken in de klantportaal

      .. figure:: /images/schermafbeeldingenportal/taakportal2.png
   :alt: Een taak in de portal

   Schermafbeelding van een taak in de portal