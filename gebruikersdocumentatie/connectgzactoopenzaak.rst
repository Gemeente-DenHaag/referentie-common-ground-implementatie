.. _connectgzactoopenzaak:

==========================================================================
How to connect Valtimo to OpenZaak
==========================================================================

.. toctree::
   :maxdepth: 2

If you are using Valtimo as ‘Generiek Zaakafhandelcomponent’ (GZAC) you want to connect Valtimo to OpenZaak. To do so you should install and configure an OpenZaak application for your organization first. After that go to ‘API Autorisaties’ in OpenZaak and click on ‘Applicatie toevoegen’ to create new application. As soon as this is done you can fill out the required fields.
Go to OpenZaak page in the Admin menu (Admin>Basis>OpenZaak). If you click the button you will see the screen below:

.. image:: /images/valtimoopenzaak.png
   :alt: Connectiescherm


fill out this screen:

* OpenZaak URL: This is the URL of your OpenZaak 
* Installation Client Id: Fill out the ‘Client ID’ from OpenZaak in Valtimo 
* Secret: Fill out the ‘Secret’ from OpenZaak in Valtimo
* RSIN/ Organization: Fill Out the RSIN number for your organization. This is a unique number for your organization that you get when you register at the Kamer van Koophandel (previously called BTW- number).

After filling out the form you can click on submit and your OpenZaak connection is made. You only have to do this once for your organization. When you finished this step, you are ready to use Valtimo as GZAC and you can connect OpenZaak to a Case.

==========================================================================
How to connect OpenZaak to a case
==========================================================================

When you use Valtimo as Generiek Zaakafhandelcomponent you want to make a connection between OpenZaak and a Case. If you do so you are able to store data from the process in OpenZaak and to add the right Zaak Status and Zaak Resultaat to the process. To connect OpenZaak to a Case you go in the Admin menu to Dossiers (Admin>Basis>Dossiers). When you click the button you will see all the Cases (Dossiers) that are available.

.. image:: /images/valtimoopenzaak2.png
   :alt: Connectiescherm

Select the Case you want to connect to by clicking on it.

On the Page that appears you see the orange button ‘Link ZaakType to Dossier’. Click on this button to proceed. After this the Zaak types screen appears and you can select the Zaak type you want to connect to in the drop down menu. These Zaak types have to be pre-configuerde in the OpenZaak installation of your organization.

.. image:: /images/valtimoopenzaak3.png
   :alt: Connectiescherm

Select the Zaaktype you want to connect to and press ‘Save’. Now the correct Zaaktype is connected to the Case/ Dossier you have selected.