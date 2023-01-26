/* global openpgp:true */
sap.ui.define([
	"sap/ui/core/mvc/Controller",
	"sap/ui/core/IconPool",
], function(Controller) {
	"use strict";

	return Controller.extend("myhealthapp.controller.Home", {

		onInit: function(){
			localStorage.setItem("bundle", "");
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

		otherFile: function () {
			this.byId('mb1').removeStyleClass("showBtn");
			this.byId('mb2').removeStyleClass("showBtnFade");
			this.byId('mb3').removeStyleClass("showBtn");
			this.byId('fileUlBox').removeStyleClass("hideFileLoad");
		},

		onUploadCSVFile: function (oEvent) {

			var oFileUploader = this.byId("fileUploader");
			var domRef = oFileUploader.getFocusDomRef();
			var file = domRef.files[0];

			let chgView = () => {
				if (localStorage.getItem("bundle").length > 5) {
					this.byId('mb1').addStyleClass("showBtn");
					this.byId('mb2').addStyleClass("showBtnFade");
					this.byId('mb3').addStyleClass("showBtn");
					this.byId('fileUlBox').addStyleClass("hideFileLoad");
				} 
			}
			
			const oReader = new FileReader();
			oReader.readAsText(file);
			oReader.onload = function (e) {
				//console.log(e.target.result);
				let eAUString = e.target.result;
				let decoded = atob(eAUString);
				let startPos = decoded.search("<Bundle");
				let endPos = decoded.search("</Bundle");
				let bundleVar = decoded.substring(startPos,endPos+9);
				localStorage.setItem("bundle", bundleVar);
				setTimeout(chgView,200);
			}
		},


		eauPress: function(oEvent) {
			localStorage.setItem("choice", "eau");
			setTimeout(window.open("./xmlViewer/w3.html"),1000);
		},

		onAGPress: function(oEvent) {
			localStorage.setItem("choice", "AG");
			setTimeout(window.open("./xmlViewer/w3.html"),1000);
		},

		onKrKaPress: function(oEvent) {
			localStorage.setItem("choice", "KraKa");
			setTimeout(window.open("./xmlViewer/w3.html"),1000);
		},

		onStornoPress: function(oEvent) {
			localStorage.setItem("choice", "Storno");
			setTimeout(window.open("./xmlViewer/w3.html"),1000);
		},

		onVPress: function(oEvent) {
			localStorage.setItem("choice", "Vers");
			setTimeout(window.open("./xmlViewer/w3.html"),1000);
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