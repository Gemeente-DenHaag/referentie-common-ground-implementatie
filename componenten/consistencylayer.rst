.. _consistency:

🚨 Consistency layer
==========================================================================


.. toctree::
   :maxdepth: 3

De consistency layer is bedoeld om 1 generieke klantervaring te bieden onafhankelijk van welk systeem er gebruikt wordt. Alle communicatie vanuit het zaaksysteem naar Openzaak verloopt via de consistency layer. Deze layer zorgt ervoor dat bijvoorbeeld op het juiste moment in alle processen de juiste emails verstuurd worden.

Technisch gezien is de consistency layer een reverse proxy voor openzaak OF een notificatie component.

.. image:: /images/graphviz/consistency.svg
   :alt: Schematische uitwerking van consistency layer
   :width: 600
