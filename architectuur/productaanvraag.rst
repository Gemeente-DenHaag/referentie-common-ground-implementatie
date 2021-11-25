.. _productaanvraag:


##################
Product Aanvraag
##################

.. toctree::
   :maxdepth: 2

Er zijn 3 varianten van productaanvragen:

#. Productaanvraag en afhandeling verlopen via deze Common Ground Referentie implementatie
#. Productaanvraag verloopt niet via Common Ground Referentie implementatie; afhandeling verloopt wel via Common Ground Referentie implementatie
#. Productaanvraag en afhandeling verlopen niet via Common Ground Referentie implementatie

*********
1. Volledige Common Ground Referentie implementatie
*********
Elke productaanvraag ziet er hetzelfde uit. Dit is niet afhankelijk van welk formuliersysteem de aanvraag indiend of welk zaakafhandelsysteem de zaak afhandeld. De componenten die een rol vervullen kunnen veranderen maar de communicatie tussen de nodes moet gelijk blijven. Hieronder een schematische weergave van deze productaanvraag.

.. image:: /images/yed/productaanvraag.png
   :alt: Portal


#. Een aanvraag begint altijd met een gebruiker die een formulier invult. Dit kan zowel een burger zijn die in de portal een formulier invult als een medewerker die in de zaakafhandelapplicatie een zaak aanmaakt.
#. Dit ingevulde formulier wordt verstuurd naar de FormulierenApi, deze controleert bijvoorbeeld of de (voor)ingevulde waardes juist zijn en of de gebruiker voldoende rechten heeft om het formulier in te sturen.
#. De FormulierenApi plaatst het ingevulde Formulier in de ObjectApi. We noemen dit een productaanvraag. 
#. De ObjectApi plaatst van deze productaanvraag een notificatie op OpenNotificatie.
#. OpenNotificatie is een messagebus. Ieder component dat geabboneerd is op dit type notificatie krijgt een notificatie. GZAC is hierop geabbonneerd en krijgt dus een seintje
#. GZAC (Generiek ZaakAfhandel Component) haalt vervolgens de productaanvraag op uit de ObjectApi.
#. Vervolgens maakt GZAC de zaak aan in OpenZaak
#. En plaatst eventuele documenten in de DocumentenApi
#. En plaatst de zaakdetails in de objectApi

*********
2. Aanvraag buiten implementatie; afhandeling binnen
*********
🚨 Moet verder uitgewerkt worden


*********
3. Volledig buiten implementatie
*********
🚨 Moet verder uitgewerkt worden