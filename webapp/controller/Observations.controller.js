sap.ui.define([
	"sap/ui/core/mvc/Controller",
	"sap/ui/model/Filter",
	"sap/ui/model/FilterOperator"
], function(Controller, Filter, FilterOperator) {
	"use strict";

	return Controller.extend("myhealthapp.controller.Observations", {

        onInit: function(){
			this.initializeRouter();
		},

		onSearchObservations : function (oEvent) {

			// build filter array
			var aFilter = [];
			var sQuery = oEvent.getParameter("query");
			if (sQuery) {
				aFilter.push(new Filter("decription", FilterOperator.Contains, sQuery));
			}

			// filter binding
			var oList = this.byId("observationsList");
			var oBinding = oList.getBinding("items");
			oBinding.filter(aFilter);
		},

		initializeRouter: function(){
			this.oRouter = sap.ui.core.UIComponent.getRouterFor(this);
        },
        
        onNavBack: function(){
            this.oRouter.navTo("homeRoute");
        }
        
	});
});