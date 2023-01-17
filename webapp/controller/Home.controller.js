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
			(async () => {
				const message = await openpgp.createMessage({ binary: new Uint8Array([0x01, 0x01, 0x01]) });
				const encrypted = await openpgp.encrypt({
					message, // input as Message object
					passwords: ['secret stuff'], // multiple passwords possible
					format: 'binary' // don't ASCII armor (for Uint8Array output)
				});
				console.log("encrypted:"+ encrypted); // Uint8Array
			
				const encryptedMessage = await openpgp.readMessage({
					binaryMessage: encrypted // parse encrypted bytes
				});
				const { data: decrypted } = await openpgp.decrypt({
					message: encryptedMessage,
					passwords: ['secret stuff'], // decrypt with password
					format: 'binary' // output as Uint8Array
				});
				console.log(decrypted); // Uint8Array([0x01, 0x01, 0x01])
			})();
		},

		initializeRouter: function(){
			this.oRouter = sap.ui.core.UIComponent.getRouterFor(this);
		},

		onMyPatientsTilePress: function(oEvent) {
			var iNumberOfPatients = oEvent.getSource().getTileContent()[0].getContent().getValue() || 0;
			sap.m.MessageToast.show(this.getView().getModel("i18n").getResourceBundle().getText("patientsTileInfo", [iNumberOfPatients]));
			this.oRouter.navTo("patientsRoute");
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