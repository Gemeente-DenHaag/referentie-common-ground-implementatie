.. _plugins:

Plugins in de portal
==========================================================================

.. toctree::
   :maxdepth: 2

De :ref:`portal` bevat standaard functionaliteiten met betrekking tot zaken, producten en andere zgw standaarden. Natuurlijk is het mogelijk dat er andere functionaliteiten in de portal verwerkt moeten worden.

Dit kan door in de react app aparte componenten mee te bouwen in de frontend code. 

Voor het backend zijn 2 mogelijkheden, of de plugin heeft zijn eigen backend api, of de plugin wordt gebundeld in de BFF. Het laatste scenario is een experimentele feature.

.. image:: /images/yed/plugin.png
   :alt: Visuele weergave componenten

Deze componenten kunnen dan gebruik maken van de authenticatie van keycloak. 

