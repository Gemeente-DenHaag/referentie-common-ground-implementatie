.. _rbac:

RBAC (Role Based ACcess)
==========================================================================

.. toctree::
   :maxdepth: 2

Een belangrijk onderdeel van onze setup is RBAC. RBAC staat voor Role based access oftewel Rolgebaseerd toegang.

Binnen onze setup liggen de rollen vast in :ref:`keycloak`; op het moment van inloggen in een client applicatie (:ref:`portal` of :ref:`gzac`) bepaald keycloak welke rol iemand heeft en communiceert dit terug naar door middel van een JWT token.

Dit access token wordt vervolgens door de applicatie met alle requests meegestuurd. De service laag bepaalt vervolgens op basis van de rol en identiteit van de gebruiker welke informatie hij terug mag geven. 

In toekomstige releases willen we niet het accesstoken gebruiken maar een apart token per service.

Daarnaast gebruiken we dit token ook om vast te leggen wie welke informatie op welk moment heeft opgevraagd.

Hieronder een schematische weergave van onze RBAC oplossing.

.. image:: /images/graphviz/rbac.svg
   :alt: Schematisch overzicht RBAC

