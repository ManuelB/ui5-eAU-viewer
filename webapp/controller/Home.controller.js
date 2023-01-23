/* global openpgp:true */
sap.ui.define([
	"sap/ui/core/mvc/Controller",
	"sap/ui/core/IconPool",
	"/libs/openpgp"
], function(Controller, openpgpjs) {
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

		onMyPatientsTilePress: function(oEvent) {
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
			window.open("./testweb/w3.html");
			}
			client.send();

		},

		onMyOrganzationsTilePress: function(oEvent) {
			var iNumberOfOrganizations = oEvent.getSource().getTileContent()[0].getContent().getValue() || 0;
			sap.m.MessageToast.show(this.getView().getModel("i18n").getResourceBundle().getText("organzationsTileInfo", [iNumberOfOrganizations]));
			this.oRouter.navTo("organizationsRoute");
		},

		onMyEncountersTilePress: function(oEvent) {
			var iNumberOfEncounters = oEvent.getSource().getTileContent()[0].getContent().getValue() || 0;
			sap.m.MessageToast.show(this.getView().getModel("i18n").getResourceBundle().getText("encountersTileInfo", [iNumberOfEncounters]));
			this.oRouter.navTo("encountersRoute");
		},
		onMyObservationsTilePress: function(oEvent) {
			var iNumberOfObservations = oEvent.getSource().getTileContent()[0].getContent().getValue() || 0;
			sap.m.MessageToast.show(this.getView().getModel("i18n").getResourceBundle().getText("observationsTileInfo", [iNumberOfObservations]));
			this.oRouter.navTo("observationsRoute");
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