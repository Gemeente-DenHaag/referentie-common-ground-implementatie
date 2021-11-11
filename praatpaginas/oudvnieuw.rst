.. _oudvnieuw:


.. toctree::
   :maxdepth: 2


============================================================
Oud en nieuw
============================================================

Hieronder heb ik van een typisch Mijn Den Haag project aangegeven hoe de opbouw zou zijn, en hoe we verwachten dat dat in deze nieuwe referentie architectuur zal zijn opgebouwd.

.. list-table:: Overzicht componenten oud en nieuw
   :widths: 33 33 34
   :header-rows: 1

   * - Wat
     - Oud
     - Nieuw
   * - Aanvraagformulier
     - IAF configuratie
     - Open Formulier configuratie
   * - Code om gebruikersinput in systeem te plaatsen
     - Maatwerk component om IAF om te zetten naar http request op adeptia/key2
     - Standaard openformulier :ref:`productaanvraag` component
   * - ZaakAfhandeling
     - Inrichting van schermen en processen in key2
     - Inrichting van processen in :ref:`gzac`
   * - Volgen functionaliteit in Mijn Den Haag
     - Maatwerk schermen in Mijn Denhaag |br| |br| Maatwerk code in key2/adeptia die dmv queries op de database data retourneert
     - Standaard functionaliteit van portal om openzaak data weer te geven |br| |br| Standaard functionaliteit van :ref:`gzac` om zaak in openzaak bij te houden
   * - Documenten downloaden
     - Maatwerk code om data uit key2 op te halen |br||br|Maatwerk koppeling met plato
     - Standaard functionaliteit van openzaak, portal en document api   



