# Universalviewer fuer eAU Dateien

System zur visuellen Darstellung elektronisch signierter Arbeitsunfähigkeitsbescheinigungsdateien (.p7b und .p7s)

Eine Anwendung im SAP OpenUI5 Format

(Die Dokumentation dieses Systems ist auf Deutsch, da es sich um eine deutschlandspezifische Bescheinigung handelt)

# Beschreibung

Bei Arbeitsunfaehigkeitsbescheinigungen handelt es sich um hochpersoenliche, medizinische Dokumente die die Berufsbeziehung und die Sozialleistungen des Patienten begleiten.

Aus diesem Grund werden die abgekuerzt geschriebenen eAU's digital signiert. Die digitale Signatur bescheinigt, dass das Dokument wirklich von dem angegebenen Verfasser stammt und dass es keinerlei Alterationen des Originaldokuments auf dem elektronischen Transportweg gab.

Diese Dateien haben die Dateiendung .p7s oder zweckidentisch .p7b

Es handelt sich hierbei um ein Buendel aus Patienteninformationen und begleitender Digitalsignatur vereint in einer einzelnen Datei

Das vorliegende System kann diese .p7s / .p7b in vier verschiedenen Fassungen darstellen.

Eine einzige Datei enthaelt also 5 Teileinheiten

* Fassung fuer den Arbeitgeber
* Fassung fuer den Versicherten
* Fassung fuer die Krankenkasse
* Stornierungsanforderung um die eAU wieder ungueltig zu machen
* Signatur zur Authentizitaetsgarantie

Hinweis: Normalerweise besteht nur die Anforderung eAU Dateien zu erzeugen, zu signieren und zu versenden. Da signierte Dateien nach ihrer Erstellung nur maschinell lesbar sind, ist der Hauptzweck dieses Universalviewers eAU Dateien wieder menschlich lesbar zu machen. Die Umwandlung erfolgt bisher ohne Signaturpruefung. Der Besitz einer eAU Datei reicht also aus, um diese in allen vier Fassungen ansehen zu koennen und macht diesen Viewer daher sehr universell. Modifikation einer bereits bestehenden Datei oder deren Signatur sind im Viewer nicht vorgesehen.

# Bildschirmansichten

Hauptbildschirm:

![Auswahl](https://user-images.githubusercontent.com/34131550/214343713-5ea7483c-a970-472b-9bf4-71dd25f881cc.png)

Die vier verschiedenen Ansichten einer einzigen Datei sehen anhand dieses Musters wie folgt aus:

![arbeitgeber](https://user-images.githubusercontent.com/34131550/214343793-029c1a1f-6209-4e96-a3ec-97ae7721f769.png)

![Krankenkasse](https://user-images.githubusercontent.com/34131550/214343833-0f13d1a5-1253-490e-b5f6-49ca56278ed7.png)

![Versicherter](https://user-images.githubusercontent.com/34131550/214343878-a881f463-2b58-47ba-94a0-7f017ab3f28b.png)

![Stornierung](https://user-images.githubusercontent.com/34131550/214343908-aae2ac70-8e13-4e14-9132-74257387f3d3.png)
