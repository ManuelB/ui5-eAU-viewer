/* global openpgp:true */
sap.ui.define([
	"sap/ui/core/mvc/Controller",
	"sap/ui/core/IconPool",
], function(Controller) {
	"use strict";

	return Controller.extend("myhealthapp.controller.Home", {

		onInit: function(){
			this.initializeRouter();
			var B = {
				fontFamily: "BusinessSuiteInAppSymbols",
				fontURI: sap.ui.require.toUrl("sap/ushell/themes/base/fonts/")
			};

			console.clear();
		},

		initializeRouter: function(){
			this.oRouter = sap.ui.core.UIComponent.getRouterFor(this);
		},

		onUploadCSVFile: function (oEvent) {

			var oFileUploader = this.byId("fileUploader");
			var domRef = oFileUploader.getFocusDomRef();
			var file = domRef.files[0];
			
			const oReader = new FileReader();
			oReader.readAsText(file);
			oReader.onload = function (e) {
				console.log(e.target.result);
			}
		},


		eauPress: function(oEvent) {
			let eAUString = "";
			let decoded = "";
			var client = new XMLHttpRequest();
			client.open('GET', './EAU0.p7s');
			client.onreadystatechange = function() {
			eAUString = client.responseText;
			decoded = atob(eAUString);

			let startPos = decoded.search("<Bundle");
			let endPos = decoded.search("</Bundle");

			let bundleVar = decoded.substring(startPos,endPos+9);
			//console.log(bundleVar);

			localStorage.setItem("choice", "eau");
			localStorage.setItem("bundle", bundleVar);
			}
			client.send();
			window.setTimeout(window.open("./testweb/w3.html"),1000);
		},

		onAGPress: function(oEvent) {
			let eAUString = "";
			let decoded = "";
			var client = new XMLHttpRequest();
			client.open('GET', './EAU0.p7s');
			client.onreadystatechange = function() {
			eAUString = client.responseText;
			decoded = atob(eAUString);

			let startPos = decoded.search("<Bundle");
			let endPos = decoded.search("</Bundle");

			let bundleVar = decoded.substring(startPos,endPos+9);
			//console.log(bundleVar);

			localStorage.setItem("choice", "AG");
			localStorage.setItem("bundle", bundleVar);
			}
			client.send();
			window.setTimeout(window.open("./testweb/w3.html"),1000);
		},

		onKrKaPress: function(oEvent) {
			let eAUString = "";
			let decoded = "";
			var client = new XMLHttpRequest();
			client.open('GET', './EAU0.p7s');
			client.onreadystatechange = function() {
			eAUString = client.responseText;
			decoded = atob(eAUString);

			let startPos = decoded.search("<Bundle");
			let endPos = decoded.search("</Bundle");

			let bundleVar = decoded.substring(startPos,endPos+9);
			//console.log(bundleVar);

			localStorage.setItem("bundle", bundleVar);
			localStorage.setItem("choice", "KraKa");
			}
			client.send();
			window.setTimeout(window.open("./testweb/w3.html"),1000);

		},

		onStornoPress: function(oEvent) {
			let eAUString = "";
			let decoded = "";
			var client = new XMLHttpRequest();
			client.open('GET', './EAU0.p7s');
			client.onreadystatechange = function() {
			eAUString = client.responseText;
			decoded = atob(eAUString);

			let startPos = decoded.search("<Bundle");
			let endPos = decoded.search("</Bundle");

			let bundleVar = decoded.substring(startPos,endPos+9);
			//console.log(bundleVar);

			localStorage.setItem("bundle", bundleVar);
			localStorage.setItem("choice", "Storno");
			}
			client.send();
			window.setTimeout(window.open("./testweb/w3.html"),1000);
		},

		onVPress: function(oEvent) {
			let eAUString = "";
			let decoded = "";
			var client = new XMLHttpRequest();
			client.open('GET', './EAU0.p7s');
			client.onreadystatechange = function() {
			eAUString = client.responseText;
			decoded = atob(eAUString);

			let startPos = decoded.search("<Bundle");
			let endPos = decoded.search("</Bundle");

			let bundleVar = decoded.substring(startPos,endPos+9);
			//console.log(bundleVar);

			localStorage.setItem("bundle", bundleVar);
			localStorage.setItem("choice", "Vers");
			}
			client.send();
			window.setTimeout(window.open("./testweb/w3.html"),1000);
		},

		onMessagePopoverPress : function (oEvent) {
			this._getMessagePopover().openBy(oEvent.getSource());
		},

		_getMessagePopover : function () {
			if (!this._oMessagePopover) {
				this._oMessagePopover = sap.ui.xmlfragment(this.getView().getId(), "myhealthapp.view.fragments.MessagePopover", this);
				jQuery.sap.syncStyleClass(this.getOwnerComponent().getContentDensityClass(), this.getView(), this._oMessagePopover);
				this.getView().addDependent(this._oMessagePopover);
			}
			return this._oMessagePopover;
		}
	});
});