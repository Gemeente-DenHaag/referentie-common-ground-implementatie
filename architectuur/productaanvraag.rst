.. _productaanvraag:

Product Aanvraag
==========================================================================

.. toctree::
   :maxdepth: 2

Elke productaanvraag ziet er hetzelfde uit. De componenten die een rol vervullen kunnen veranderen maar de communicatie tussen de nodes moet gelijk blijven. Hieronder een schematische weergave van deze productaanvraag.

.. graphviz::

   digraph {
        rankdir="LR";


        subgraph cluster_0 {
            label = "Gebruiker";
            "Gebruiker" -> "Formulier";
            "Formulier" -> "FormulierenApi";
            "FormulierenApi" -> "ObjectApi";
        }
        subgraph cluster_1 {
            label = "Proces";
            "OpenNotificatie"->"GZAC";
            "GZAC"->"ObjectApi";
            "GZAC"->"DocumentenApi";
            "GZAC"->"Openzaak";
        }
        subgraph subs{
            rank =same;
            "ObjectApi"->"OpenNotificatie";  
        }

   }
.. image:: /images/productaanvraag.png
   :alt: Portal
   :width: 600

#. Een aanvraag begint altijd met een gebruiker die een formulier invult. Dit kan zowel een burger zijn die in de portal een formulier invult als een medewerker die in de zaakafhandelapplicatie een zaak aanmaakt.
#. Dit ingevulde formulier wordt verstuurd naar de FormulierenApi, deze controleert bijvoorbeeld of de (voor)ingevulde waardes juist zijn en of de gebruiker voldoende rechten heeft om het formulier in te sturen.
#. De FormulierenApi plaatst het ingevulde Formulier in de ObjectApi. We noemen dit een productaanvraag. De ObjectApi plaatst van deze productaanvraag een notificatie op OpenNotificatie.
#. OpenNotificatie is een messagebus. Ieder component dat geabboneerd is op dit type notificatie krijgt een notificatie. GZAC is hierop geabbonneerd en krijgt dus een seintje
#. GZAC (Generiek ZaakAfhandel Component) haalt vervolgens de productaanvraag op uit de ObjectApi.
#. Vervolgens maakt GZAC de zaak aan in OpenZaak en plaatst eventuele documenten in de DocumentenApi
