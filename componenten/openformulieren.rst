.. _openformulieren:

Open Formulieren
==========================================================================
.. toctree::
   :maxdepth: 3



`Open Formulieren <https://github.com/open-formulieren/open-forms>`_ is een applicatie waarme beheerders snel slimme formulieren kunnen configureren. Deze formulieren worden geprefilled door slimme koppelingen met bijvoorbeeld HaalCentraal. Open Formulieren is een laag bovenop `Form.io <https://form.io>`_

Den Haag heeft gekozen voor Open Formulieren omdat:

* Het de functionaliteiten biedt die nodig zijn voor een formulieroplossing
* De opzet & architectuur aansluiten bij onze visie
* Het Open Source en modulair is en gebouwde componenten dus voor andere gemeentes herbruikbaar zijn

In Open Formulieren kunnen formulieren zelfstandig geserveerd worden of via de SDK ontsloten worden op andere platformen. Den Haag heeft gekozen om de formulieren te ontsluiten via de SDK zodat wij het :ref:`designsystem` kunnen toepassen. 
  
Ingestuurde formulieren worden vervolgens opgepakt door het Generieke Zaak Afhandel Component, op de juiste manier in de ZGW api's geregisteerd en kunnen direct door medewerkers behandeld worden. Uiteraard zijn alle zaken van een aanvrager ook direct zichtbaar in de Portal. 

Op het :ref:`architectuur` onderdeel van deze site staat de :ref:`productaanvraag` in detail uitgewerkt.

==========================================================================
Sequence diagrammen Open Formulieren
==========================================================================


In onze opzet van denhaag.nl gebruiken we wordpress als CMS. In het CMS kan met een component een formulier op een pagina gezet worden. Onder water wordt het formulier ingeladen vanaf openformulieren, maar voor de burger staat het in de website.

.. figure:: /images/ssd/formulierpubliek.png
   :alt: SSD van gebruik van een publiek formulier

   SSD van gebruik van een publiek formulier


Binnen de portal werkt het vergelijkbaar; ook hier staat het formulier in openformulieren maar wordt het voor de burger ingeladen alsof het in de portal staat.


.. figure:: /images/ssd/formulierlogin.png
   :alt: SSD van gebruik van een formulier in de portal

   SSD van gebruik van een formulier in de portal waarvoor klant ingelogd moet zijn

