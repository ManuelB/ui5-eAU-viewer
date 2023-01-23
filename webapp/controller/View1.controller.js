//This code is used for uploading documents and images
onUploadFile:function(){
    var oFileUpload = 
   this.getView().byId("fileUploaderFS");
   
    var domRef = oFileUpload.getFocusDomRef();
    var file = domRef.files[0];
    var that = this;
   
   //This code is used for uploading image or document file
   
    this.fileName =
    this.getView().byId("FileName").getValue();
    this.fileType = file.type;
   
     var reader = new FileReader();
              reader.onload = function (e) {
   var vContent = e.currentTarget.result
                 
    that.updateFile(that.fileName, that.fileType, vContent);
              }
               reader.readAsDataURL(file);
          }
       
   
   
   //This code is used for uploading xlsx sheets
   
   
      var oFileUpload = 
   this.getView().byId("fileUploaderTS");
     var domRef = oFileUpload.getFocusDomRef();
     var file = domRef.files[0];
     var that = this;
                  
    this.fileName = this.getView().byId("TSFileName")
   .getValue()+".csv";
    this.fileType = file.type;
    this.json_object=null
                
                  var reader = new FileReader();
                    reader.onload = function(e) {
        var data = e.target.result;
        var workbook = XLSX.read(data, {
          type: 'binary'
        });
        console.log(workbook)
   
        workbook.SheetNames.forEach(function(sheetName) {
        
          var XL_row_object = 
   XLSX.utils.sheet_to_row_object_array(
   workbook.Sheets[sheetName]);
          if(XL_row_object.length!==0){
   
       that.json_object = JSON.stringify(XL_row_object);
         
       }
          
       })
   that.updateFile(that.fileName, that.fileType,
    that.json_object);
   
      };
   
      reader.onerror = function(ex) {
        console.log(ex);
      };
   
      reader.readAsBinaryString(file);
   
              }