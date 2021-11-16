.. _gzac:


==========================================================================
GZAC (Generiek Zaak Afhandel Component)
==========================================================================
.. toctree::
   :maxdepth: 3


GZAC/Valtimo `Valtimo <https://www.valtimo.nl>`_ is een platform bovenop `Camunda <https://camunda.com>`_ dat wij inzetten als ons generieke zaakafhandelcomponent. Het platform is ontwikkeld door `Ritense <https://ritense.com>`_

.. figure:: /images/gzac1.png
   :alt: Schematische weergave van GZAC in het 5 lagenmodel
   :width: 600

   Schematische weergave van GZAC in het 5 lagenmodel

Binnen het 5 lagen model opereert GZAC vooral op laag 4: business logica en laag 5: interactie.

In GZAC is applicatie waarin processen volgens BPMN gemodeleerd kunnen worden en waarin vervolgens zaken volgens dat gemodeleerde proces afgehandeld worden. 
Delen van deze processen kunnen volledig automatisch afgehandeld worden bijvoorbeeld op basis van DMN modellen, maar er is ook een volledige userinterface waarmee casemanagers zaken af kunnen handelen.
Meer informatie over GZAC/Valtimo staat op de valtimo `project site <https://docs.valtimo.nl/valtimo-core-concepts/about-valtimo>`_.

Voor GZAC hebben we een groot aantal connectoren beschikbaar waarmee het kan koppelen met de common ground zgw componenten zoals OpenZaak, ProductAanvraag, ObjectApi en DocumentApi.




