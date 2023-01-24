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

Hinweis: Normalerweise besteht nur die Anforderung diese Dateien zu erzeugen, zu signieren und zu versenden. Bei diesem Viewer koennen also beliebige eAUs angezeigt werden. Die Anzeige erfolgt *immer*, unabhaengig von einer korrekten oder inkorrekten Signatur und unabhaengig vom Verfasser. Signierte Dateien koennen nur von Maschinen gelesen werden. Hauptzweck ist die Sichtbarmachung der maschinell erzeugten Dateien z.B. zur Ueberpruefung deren Inhalts. Weiterhin besteht keinerlei Moeglichkeit die Inhalte oder die Signatur der bereits bestehenden Datei abzuaendern.

# Bildschirmansichten

Hauptbildschirm:

![Auswahl](https://user-images.githubusercontent.com/34131550/214343713-5ea7483c-a970-472b-9bf4-71dd25f881cc.png)

Die vier verschiedenen Ansichten einer einzigen Datei sehen anhand dieses Musters wie folgt aus:

![arbeitgeber](https://user-images.githubusercontent.com/34131550/214343793-029c1a1f-6209-4e96-a3ec-97ae7721f769.png)

![Krankenkasse](https://user-images.githubusercontent.com/34131550/214343833-0f13d1a5-1253-490e-b5f6-49ca56278ed7.png)

![Versicherter](https://user-images.githubusercontent.com/34131550/214343878-a881f463-2b58-47ba-94a0-7f017ab3f28b.png)

![Stornierung](https://user-images.githubusercontent.com/34131550/214343908-aae2ac70-8e13-4e14-9132-74257387f3d3.png)
