.. _pbac:

PBAC (Policy Based Access Control)
==========================================================================

.. toctree::
   :maxdepth: 2

De Den Haag Referentie architectuur is een zero trust architectuur. 

Binnen onze setup liggen de rollen vast in :ref:`keycloak`; op het moment van inloggen in een client applicatie (:ref:`portal` of :ref:`gzac`) bepaalt keycloak welke rol iemand heeft en communiceert dit terug naar door middel van een JWT token.

Vervolgens haalt de applicatie voor elke service die hij wilt aanroepen dmv token exchange een servicetoken op. De service laag bepaalt vervolgens op basis van dit token welke informatie hij terug mag geven. 

Daarnaast gebruiken we dit token ook om vast te leggen wie welke informatie op welk moment heeft opgevraagd.

Hieronder een schematische weergave van onze RBAC oplossing.

.. image:: /images/pbac.png
   :alt: Schematisch overzicht PBAC

