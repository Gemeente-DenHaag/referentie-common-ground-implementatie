.. _productaanvraag:


##################
Product Aanvraag
##################

.. toctree::
   :maxdepth: 2

Er zijn 3 varianten van productaanvragen:

#. Productaanvraag in open formulieren; afhandeling in GZAC
#. Productaanvraag in open formulieren; afhandeling niet in GZAC

*********
1. Productaanvraag in open formulieren; afhandeling in GZAC
*********
Elke productaanvraag ziet er hetzelfde uit. Dit is niet afhankelijk van welk formuliersysteem de aanvraag indiend of welk zaakafhandelsysteem de zaak afhandeld. De componenten die een rol vervullen kunnen veranderen maar de communicatie tussen de nodes moet gelijk blijven. Hieronder een schematische weergave van deze productaanvraag.

.. image:: /images/yed/productaanvraag.png
   :alt: Schematische weergave van een productaanvraag waarbij de aanvraag wordt afgehandeld in GZAC


#. Een aanvraag begint altijd met een gebruiker die een formulier invult. Dit kan zowel een burger zijn die in de portal een formulier invult als een medewerker die in de zaakafhandelapplicatie een zaak aanmaakt.
#. Dit ingevulde formulier wordt verstuurd naar de FormulierenApi, deze controleert bijvoorbeeld of de (voor)ingevulde waardes juist zijn en of de gebruiker voldoende rechten heeft om het formulier in te sturen.
#. De FormulierenApi plaatst het ingevulde Formulier in de ObjectApi. We noemen dit een productaanvraag. 
#. De ObjectApi plaatst van deze productaanvraag een notificatie op OpenNotificatie.
#. OpenNotificatie is een messagebroker. Ieder component dat geabboneerd is op dit type notificatie krijgt een notificatie. GZAC is hierop geabbonneerd en krijgt dus een seintje
#. GZAC (Generiek ZaakAfhandel Component) haalt vervolgens de productaanvraag op uit de ObjectApi.
#. Vervolgens maakt GZAC de zaak aan in OpenZaak
#. En plaatst eventuele documenten in de DocumentenApi
#. En plaatst de zaakdetails in de objectApi


.. image:: /images/ssd/createzaakpwa.png
   :alt: Schematische weergave van een productaanvraag waarbij de aanvraag wordt afgehandeld in GZAC

.. image:: /images/ssd/verzoeken.png
   :alt: Schematische weergave van een productaanvraag waarbij de aanvraag wordt afgehandeld in GZAC


*********
1. Productaanvraag in open formulieren; afhandeling niet in GZAC
*********

.. image:: /images/yed/productaanvraag2.png
   :alt: Schematische weergave van een productaanvraag

#. Een aanvraag begint altijd met een gebruiker die een formulier invult. Dit kan zowel een burger zijn die in de portal een formulier invult als een medewerker die in de zaakafhandelapplicatie een zaak aanmaakt.
#. Dit ingevulde formulier wordt verstuurd naar de FormulierenApi, deze controleert bijvoorbeeld of de (voor)ingevulde waardes juist zijn en of de gebruiker voldoende rechten heeft om het formulier in te sturen.
#. De FormulierenApi plaatst het ingevulde Formulier in de ObjectApi. We noemen dit een productaanvraag. 
#. De ObjectApi plaatst van deze productaanvraag een notificatie op OpenNotificatie.
#. OpenNotificatie is een messagebus. Ieder component dat geabboneerd is op dit type notificatie krijgt een notificatie. De applicatie die de aanvraag moet afhandelen kan zich hierop abboneren en de aanvraag verder afhandelen.




