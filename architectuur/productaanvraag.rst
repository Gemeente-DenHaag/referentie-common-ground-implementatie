.. _productaanvraag:


##################
Verzoeken
##################

.. toctree::
   :maxdepth: 2

Hieronder staat het productaanvraag / verzoek patroon uitgewerkt





#. Een aanvraag begint altijd met een gebruiker die een formulier invult. Dit kan zowel een burger zijn die in de portal een formulier invult als een medewerker die in de zaakafhandelapplicatie een zaak aanmaakt.
#. Dit ingevulde formulier wordt verstuurd naar de FormulierenApi, deze controleert bijvoorbeeld of de (voor)ingevulde waardes juist zijn en of de gebruiker voldoende rechten heeft om het formulier in te sturen.
#. De FormulierenApi plaatst het ingevulde Formulier in de ObjectApi. We noemen dit een verzoek. 
#. De ObjectApi plaatst een notificatie op OpenNotificatie dat een VerzoekObject is aangemaakt
#. OpenNotificatie is een messagebroker. Ieder component dat geabboneerd is op dit type notificatie krijgt een notificatie. Het zaaksysteem is hierop geabbonneerd en krijgt dus een notificatie
#. Het zaaksysteem haalt vervolgens het verzoek op uit de ObjectApi.
#. Vervolgens maakt het zaaksysteem de zaak aan in OpenZaak
#. En plaatst eventuele documenten in de DocumentenApi
#. En plaatst eventuele zaakdetails in de objectApi
#. En verwijderd het verzoekobject uit de objectApi

.. image:: /images/yed/productaanvraag.png
   :alt: Schematische weergave van een verzoek

.. image:: /images/ssd/verzoeken.png
   :alt: SequenceDiagram


De mapping tussen de systemen vind plaats op ObjectType. In OpenFormulieren wordt in het aanvraagdformulier vastgelegd als welk objecttype de aanvraag geregistreerd moet worden in de objecten api. In het zaakafhandelsysteem worden notificaties op het aanmaken van objecten met dit objecttype geconfigureerd als trigger om een nieuwe zaak te starten.