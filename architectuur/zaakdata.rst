.. _zaakdata:


####################
Zaakdata
####################

.. toctree::
   :maxdepth: 2


==========================================================================
Wat is zaakdata?
==========================================================================

Het gaat allemaal om data. In GZAC begint het allemaal met een Zaak. Zie een zaak als een ouderwetse hangmap in een archief. Er zit data en informatie in die map. En nog belangrijker, de zaak is statisch, hij doet niets. Hij monitort niet zijn eigen voortgang en weet niet wie of wat er iets moet doen om het werk af te krijgen. Om het werk gedaan te krijgen moet een medewerker de hangmap pakken en er iets mee doen.

Zo werkt het ook met GZAC, de zaak bevat de informatie en via GZAC kan de medewerker de zaak bekijken en behandelen. Alleen in het ouderwetse archief was een zaak een hangmap, in GZAC is het een JSON document.

We kunnen ook informatie ophalen uit of opslaan in andere systemen zoals haalcentraal. Dit heeft als voordeel dat data maar op 1 plaats is opgeslagen maar kan ook nadelen hebben, zoals performance of lastiger zoeken.

Als laatste is het mogelijk om Camunda proces variabelen te gebruiken. Hiermee kun je flexibel data tijdelijk opslaan, dit wordt meestal gebruikt om het proces te sturen.

Er zijn diverse manieren om te werken met data in GZAC. Elke manier heeft zijn eigen voor- en na-delen.

Types data
Het is belangrijk om te begrijpen welke typen data je hebt. Niet alle data hoeft beschikbaar gesteld te worden aan de proces-engine van Camunda. Hier goed over nadenken en alleen de noodzakelijke informatie beschikbaar stellen is belangrijk vanuit een security perspectief. 

We onderscheiden deze 3 data typen:

#. Primaire (stuur)data. Deze data is nodig voor de proces engine om beslissingen te maken bij het uitvoeren van een proces om het proces te sturen. Stel je een proces voor waarbij een manager akkoord moet geven op transacties boven de € 1000,=. In dat geval is het bedrag noodzakelijk om te bepalen of de manager een akkoord moet geven.
#. Secondaire data. Deze data is niet nodig voor het procesmodel maar wel om op te filteren. Als voorbeeld, de naam van een burger is niet belangrijk om te sturen in het proces, maar wel wanneer je de zaak probeert op te zoeken omdat de burger een vraag heeft over het proces.
#. Tertiare data. Deze data wordt alleen getoond maar heeft verder geen belang, bijvoorbeeld een commentaar veld.

.. list-table:: Overzicht van data typen
   :widths: 25 25 25 25
   :header-rows: 1

   * - Data type
     - Proces sturing
     - Filteren
     - Voorbeeld
   * - Primair
     - Ja
     - Ja
     - Bedrag
   * - Secondair
     - Nee
     - Ja
     - Naam
   * - Tertiare
     - Nee
     - Nee
     - Commentaar veld


------------
Data opslag
------------

Er zijn 3 opties voor het opslaan van data:
1. **Camunda process variabelen.** Dit is de meest eenvoudige manier om data op te slaan. Het voordeel is dat er geen aparte data opslag nodig is, deze kunnen in het GZAC gedefinieerd worden en Camunda slaat ze op bij de zaak. Het is standaard functionaliteit dat de variabelen door de procesengine gebruikt kunnen worden. In gzac kunnen procesvariabelen nocode aangemaakt worden.
Enkele nadelen zijn
a. Lastige querien
b. Langzaam bij veel data
c. Geen relationele datamodellen
d. Geen onderscheid tussen data en proces
e. Geen mogelijkheid tot het draaien van rapportages (BI)

2. **Valtimo case** Binnen valtimo is een custom oplossing die gebruik maakt van relationele data. Dit wordt door een developer ingericht. De voordelen zijn:
a. Snel
b. Delen van data tussen processen
c. Onderscheid tussen data en proces
d. Complex querien en filtering mogelijk
e. Draaien van rapportages (BI) mogelijk

3. **Externe data store** Koppelen met een externe ERP, CRM of bijvoorbeeld open zaak. Deze datastores kunnen verbonden worden via een standaard API. De verbinding met OpenZaak is plug&play.
