.. _plugins:

Plugins in de portal
==========================================================================

.. toctree::
   :maxdepth: 2

De :ref:`portal` bevat standaard functionaliteiten met betrekking tot zaken, producten en andere zgw standaarden. Natuurlijk is het mogelijk dat er andere functionaliteiten in de portal verwerkt moeten worden.

Dit kan door in de react app aparte componenten mee te bouwen in de frontend code. Het backend component van de plugin moet als aparte container deployed worden.

.. image:: /images/yed/plugin.png
   :alt: Visuele weergave componenten

Deze componenten kunnen dan gebruik maken van de authenticatie van keycloak. 

