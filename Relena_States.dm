<module>

	<!-- Information sur le module -->
	<header>
		<!-- Nom affiché dans la liste des modules -->
		<name>States</name>        
		<!-- Version du module -->
		<version>1.0</version>
		<!-- Dernière version de dofus pour laquelle ce module fonctionne -->
		<dofusVersion>2.11</dofusVersion>
		<!-- Auteur du module -->
		<author>Relena</author>
		<!-- Courte description -->
		<shortDescription>Liste et décrit les états présent dans Dofus.</shortDescription>
		<!-- Description détaillée -->
		<description>Liste et décrit les états présent dans Dofus.</description>
	</header>

	<!-- Liste des interfaces du module, avec nom de l'interface, nom du fichier squelette .xml et nom de la classe script d'interface -->
	<uis>
		<ui name="config" file="xml/config.xml" class="ui::ConfigUI"/>
		<ui name="states" file="xml/states.xml" class="ui::StatesUI" />
	</uis>

	<script>States.swf</script>

</module>
