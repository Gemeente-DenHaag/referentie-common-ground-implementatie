.. _generiekproces:

==========================================================================
Generiek proces
==========================================================================

.. toctree::
   :maxdepth: 2


Het generieke proces is een blauwdruk voor alle processen binnen de gemeente. Als de manier waarop een zaak is ingericht voldoet aan de blauwdruk dan kan het proces afgehandeld worden met de gestandaardiseerde componenten.

---------------------
Aanmaken zaak
---------------------

Het bouwblok aanmaken schrijft de generieke manier waarop een zaak aangemaakt moet worden. Elke zaak wordt altijd op dezelfde wijze aangemaakt. Dit zorgt ervoor dat de gegevens in alle ZGW api's op de juiste manier met de juiste samenhang zijn vastgelegd.


.. image:: /images/bpmn/aanmakenzaak.png
   :alt: Aanmaken zaak


---------------------
Zet zaakstatus
---------------------

Het bouwblok zetzaakstatus beschrijft wat er moet gebeuren op het moment dat een klant-zaakstatus veranderd.

#. De zaakstatus wordt gezet in openzaak
#. De documentapi krijgt een notificatie van de zaakstatus (bewaartermijnen kunnen daarvan afhankelijk zijn)
#. Er wordt een klantcontact gemaakt met de melding dat de zaakstatus is veranderd
#. Er gaat een notificatie naar de klant

.. image:: /images/bpmn/zetzaakstatus.png
   :alt: zet zaakstatus bpmn


---------------------
Gebruikerstaak
---------------------

Gebruikerstaak

.. image:: /images/bpmn/gebruikerstaak.png
   :alt: gebruikerstaak bpmn



---------------------
Besluit
---------------------

Het bouwblok besluit beschrijft de afhandeling op het moment dat een besluit genomen wordt in een proces. De volgende activiteiten vinden plaats.

#. De zaakstatus wordt gezet in openzaak


.. image:: /images/bpmn/besluit.png
   :alt: besluit bpmn model
