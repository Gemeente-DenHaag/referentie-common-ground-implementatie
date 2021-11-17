.. _zaakdetails:


####################
Zaakdetails
####################


.. toctree::
   :maxdepth: 2


Volgens `NORA <https://www.noraonline.nl/wiki/Het_basisconcept_van_Zaakgericht_Werken>`_ is een Zaakdossier breder dan een Zaak in OpenZaak. “Een zaakdossier is het geheel van zaak-metadata, bijbehorende informatieobjecten incl. metadata, statussen, resultaten en besluiten, en gerelateerde entiteiten”. 

.. image:: /images/zaakdetails.png
   :alt: Zaakdetails


Binnen GZAC bestaat het Zaakdossier uit: 

*	De Zaak in OpenZaak. Dit zijn de meta-gegevens van het Zaakdossier, zoals de registratiedatum, startdatum en archiefstatus. 

*	Documenten. Documenten zijn bijvoorbeeld PDF of JPG bestanden. 

*	Besluiten.

*	Gerelateerde ZaakObjecten. Objecten zijn ‘dingen’ zoals bijvoorbeeld een parkeermeter of een gespreksverslag. Het verschil met Documenten is dat deze dingen in een machine-readable formaat worden opslagen, JSON. In afwijking van de VNG Standaard maken we een onderscheid tussen Objecten die binnen het Zaakdossier vallen en Objecten die er een relatie mee hebben. Een gerelateerd Zaakobject heeft zelfstandig geen bestaansrecht en kan worden gearchiveerd met de Zaak. Een voorbeeld is een gespreksverslag binnen een Zaakdossier. Een Zelfstandig Zaakobject heeft zelfstandig bestaansrecht. Deze kan al bestaan voordat er een Zaakdossier ontstaat en kan blijven bestaan nadat de Zaak is afgerond. Een voorbeeld is een laadpaal. *Note: het onderscheid in Zaakobjecten wordt (nog) niet gemaakt in een VNG standaard.*

*	Zaakdetails. Het Zaakdetail is het inhoudelijke (niet-meta-data) deel van de Zaak. Dit wordt het eenvoudigst duidelijk door bijgaande illustratie, waar Zaakdetails zijn omkaderd in blauw. *Note: Zaakdetails wordt (nog) niet ondersteund in een VNG standaard.*

.. image:: /images/zaakdetails2.png
   :alt: Zaakdetails

=============================
Opslag van Zaakdossier-data
=============================

Het uitgangspunt van de Zaakafhandeling is dat Zaakdossier-data in de datalaag wordt opgeslagen. Het is geen doel om ‘zonder database’ te werken in laag 4. Zoals onderkend door de VNG kan er data bestaan in laag 4, zoals bijvoorbeeld data die nodig is voor de processturing (procesvariabelen). De twee belangrijke uitgangspunten zijn: 

*	Alle applicatieoverstijgende data wordt opgeslagen in de datalaag. Als voorbeeld, een stamtabel met provincies is specifiek voor een applicatie en mag in de database van de applicatie worden opgeslagen. Een ‘klant’ wordt door meerdere applicaties in het landschap gebruikt en wordt in de datalaag 1/2 opgeslagen. 
*	Zaakdossierdata is ‘eigendom’ van een Zaaksysteem gedurende de tijd dat een Zaak wordt behandeld. Elke systeem dat – voor zover rechten dat toestaan – kan Zaakdossierdata bekijken, maar alleen het Zaaksysteem dat de zaak behandeld mag wijzigen. Het is technisch vrijwel onhaalbaar om foutvrij meerdere systemen aan dezelfde Zaakdossierdata te laten werken. 

.. image:: /images/zaakdetails3.png
   :alt: Zaakdetails

====================
API’s 
====================

Een korte toelichting op de API’s. 

1.	ProductAanvragen. Deze API slaat ProductAanvragen (tijdelijk) op. Ze wordt gevoed door een formulieren component. Via een Notificatie (bijvoorbeeld OpenNotificaties) wordt het specifieke- of generieke zaakafhandelsysteem informatiearm genotificeerd dat er een ProductAanvraag klaarstaat voor verwerking. Dit systeem haalt de ProductAanvraag op, verwijdert deze uit de database en verwerkt de aanvraag. 
2.	Zaken API. Meta-gegevens van een Zaakdossier. Belangrijkste element van OpenZaak.  
3.	Zaakdetails. Per Zaak 1 JSON Object met de inhoudelijkheid van een Zaakdossier. Technisch een instantie van de Object API.
4.	Documenten API. 
5.	Objecten API. Er kunnen (in tegenstelling tot de andere API’s) meerdere instanties (installaties) van de Object API bestaan, bijvoorbeeld gescheiden naar domein. Gedacht worden aan een Object API met objecten in de buitenruimte en een losse Objecten API voor gegevens in het werkdomein. 
6.	Besluiten.
7.	Klanten en klantinteracties. In ontwikkeling. 


======================
Zaakdetails
======================

De Zaakdetails zijn technisch ingevuld door een JSON object. De definitie van Zaakdetails ligt vast in een JSON schema. Deze is opzet is gelijk aan die van de Object API, zoals hier beschreven. Er bestaat een grote mate van vrijheid in het definiëren van de data die wordt opgeslagen – ook complexe en grote datasets kunnen worden verwerkt zonder dat hier database wijzigingen voor nodig zijn. 

.. image:: /images/zaakdetails2.png
   :alt: Zaakdetails


Voor de weergave van data wordt formio gebruikt. Ook formio form definitities zijn JSON schema’s. Dit kan ‘no code’ gedaan worden met behulp van een ‘drag-and-drop’ editor. Indien er geen form-definitie wordt gemaakt wordt de data op een eenvoudige manier standaard weergegeven (in ontwikkeling oktober 2021). 

.. figure:: /images/zaakdetails4.png
  :alt: Zaakdetails
  :figwidth: 40%
  :align: right

Omdat Zaakdetails worden opgeslagen in een JSON object in een Object API zijn ze benaderbaar door portalen (mijn omgevingen) door de Object API uit te lezen. Daarmee kan indien gewenst ook inhoudelijke informatie van een Zaak getoond worden aan een burger/klant zonder dat een portaal toegang heeft tot GZAC. 



