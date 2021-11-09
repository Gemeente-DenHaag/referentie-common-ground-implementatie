.. _keycloak:
Keycloak
==========================================================================
.. toctree::
   :maxdepth: 3

Keycloak is een open source identity en access management oplossing.  We gebruiken keycloak voor de applicaties die we beschikbaar stellen voor de burgers en ook voor medewerkers. 

Bij burgers authenticeren we tegen DigiD of eHerkenning, bij medewerkers gebruiken we de interne Identity Provider.

Op :ref:`rbac` staat meer informatie over hoe we met toegang tot api's omgaan in combinatie met authenticatie.

In de huidige setup geven we het access token 1 op 1 door aan de achterliggende systemen

.. figure:: /images/graphviz/authpassthrough.svg
   :alt: Schematische weergave passthrough

   Schematische weergave van huidige setup


We willen toe naar een situatie waarbij per achterliggend systeem een apart token wordt gegenereerd

.. figure:: /images/graphviz/authgrant.svg
   :alt: Schematische weergave grant

   Schematische weergave van gewenste situatie
