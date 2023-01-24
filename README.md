# OpenUI5-eAU Viewer

System zur visuellen Darstellung elektronisch signierter Arbeitsunfähigkeitsbescheinigungsdateien (.p7b und .p7s)

(Die Dokumentation dieses Systems ist auf Deutsch, da es sich um eine deutschlandspezifische Bescheinigung handelt)

# Einleitung

Bei Arbeitsunfaehigkietsbescheinigungen handelt es sich um hoch persoenliche, medizinische Dokumente die die Berufsbeziehung und die Sozialleistungen des Patienten bescheinigen.

Aus diesem Grund werden die abgekuerzt geschriebenen eAU's digital signiert. Die digitale Signatur bescheinigt, dass das Dokument wirklich von dem angegebenen Verfasser stammt und dass es keinerlei Alterationen des Originaldokuments im elektronischen Transportweg gab.

Diese Dateien haben die Dateiendung .p7s oder zweckidentisch .p7b

Es handelt sich hierbei um ein Buendel aus Patienteninformationen und begleitender Digitalsignatur vereint in einer einzelnen Datei

Das vorliegende System kann diese .p7s / .p7b in vier verschiedenen Fassungen darstellen.

Eine einzige Datei enthaelt also 5 Teileinheiten

* Fassung fuer den Arbeitgeber
* Fassung fuer den Versicherten
* Fassung fuer die Krankenkasse
* Signatur zur Authentizitaetsgarantie

Hinweis: Normalerweise besteht nur die Anforderung diese Dateien zu erzeugen, zu signieren und zu versenden. Bei diesem Viewer koennen also beliebige eAUs angezeigt werden. Die Anzeige erfolgt *immer*, unabhaengig von einer korrekten oder inkorrekten Signatur und unabhaengig vom Verfasser. Signierte Dateien koennen nur von Maschinen gelesen werden. Hauptzweck ist die Sichtbarmachung der maschinell erzeugten Dateien z.B. zur Ueberpruefung deren Inhalts. Weiterhin besteht keinerlei Moeglichkeit die Inhalte oder die Signatur der bereits bestehenden Datei abzuaendern.![image](https://user-images.githubusercontent.com/34131550/214338104-7aa57548-ecfa-49f7-83af-b3d3842a0bd2.png)
