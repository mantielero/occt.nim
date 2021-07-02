##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of TDF_Data"
discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of DDF_Data"
discard "forward decl of DDF_Browser"
discard "forward decl of DDF_Transaction"
type
  Ddf* {.importcpp: "DDF", header: "DDF.hxx", bycopy.} = object ## ! Search in draw  directory the framewok  identified
                                                        ## ! by its name <Name>. returns True if found. In that
                                                        ## ! case <DF> is setted.


proc getDF*(name: var StandardCString; df: var Handle[TDF_Data];
           complain: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "DDF::GetDF(@)", header: "DDF.hxx".}
proc findLabel*(df: Handle[TDF_Data]; entry: StandardCString; label: var TDF_Label;
               complain: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "DDF::FindLabel(@)", header: "DDF.hxx".}
proc addLabel*(df: Handle[TDF_Data]; entry: StandardCString; label: var TDF_Label): StandardBoolean {.
    importcpp: "DDF::AddLabel(@)", header: "DDF.hxx".}
proc find*(df: Handle[TDF_Data]; entry: StandardCString; id: StandardGUID;
          a: var Handle[TDF_Attribute]; complain: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "DDF::Find(@)", header: "DDF.hxx".}
proc find*[T](df: Handle[TDF_Data]; entry: StandardCString; id: StandardGUID;
             a: var Handle[T]; complain: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "DDF::Find(@)", header: "DDF.hxx".}
proc returnLabel*(theCommands: var DrawInterpretor; L: TDF_Label): var DrawInterpretor {.
    importcpp: "DDF::ReturnLabel(@)", header: "DDF.hxx".}
proc allCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "DDF::AllCommands(@)", header: "DDF.hxx".}
proc basicCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "DDF::BasicCommands(@)", header: "DDF.hxx".}
proc dataCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "DDF::DataCommands(@)", header: "DDF.hxx".}
proc transactionCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "DDF::TransactionCommands(@)", header: "DDF.hxx".}
proc browserCommands*(theCommands: var DrawInterpretor) {.
    importcpp: "DDF::BrowserCommands(@)", header: "DDF.hxx".}

