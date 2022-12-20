sap.ui.define([
	"sap/ui/core/mvc/Controller",
	"sap/ui/model/Filter",
	"sap/ui/model/FilterOperator"
], function(Controller, Filter, FilterOperator) {
	"use strict";

	return Controller.extend("myhealthapp.controller.Patients", {

        onInit: function(){
			this.initializeRouter();
		},

		onSearchPatients : function (oEvent) {

			// build filter array
			var aFilter = [];
			var sQuery = oEvent.getParameter("query");
			if (sQuery) {
				aFilter.push(new Filter("FirstName", FilterOperator.Contains, sQuery));
			}

			// filter binding
			var oList = this.byId("patientsList");
			var oBinding = oList.getBinding("items");
			oBinding.filter(aFilter);
		},

		initializeRouter: function(){
			this.oRouter = sap.ui.core.UIComponent.getRouterFor(this);
        },
        
        onNavBack: function(){
            this.oRouter.navTo("homeRoute");
		},
		
		onPressPatient : function(oEvent){
			var sPatientId = this.getView().getModel().getProperty(oEvent.getParameter("listItem").getBindingContextPath()+"/id")
			this.oRouter.navTo("patientRoute", {patientId: sPatientId});
		},

	});
});