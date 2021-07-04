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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_CString, ../Draw/Draw_Interpretor

discard "forward decl of TDF_Data"
discard "forward decl of TDF_Label"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
discard "forward decl of DDF_Data"
discard "forward decl of DDF_Browser"
discard "forward decl of DDF_Transaction"
type
  DDF* {.importcpp: "DDF", header: "DDF.hxx", bycopy.} = object ## ! Search in draw  directory the framewok  identified
                                                        ## ! by its name <Name>. returns True if found. In that
                                                        ## ! case <DF> is setted.


proc GetDF*(Name: var Standard_CString; DF: var handle[TDF_Data];
           Complain: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "DDF::GetDF(@)", header: "DDF.hxx".}
proc FindLabel*(DF: handle[TDF_Data]; Entry: Standard_CString; Label: var TDF_Label;
               Complain: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "DDF::FindLabel(@)", header: "DDF.hxx".}
proc AddLabel*(DF: handle[TDF_Data]; Entry: Standard_CString; Label: var TDF_Label): Standard_Boolean {.
    importcpp: "DDF::AddLabel(@)", header: "DDF.hxx".}
proc Find*(DF: handle[TDF_Data]; Entry: Standard_CString; ID: Standard_GUID;
          A: var handle[TDF_Attribute]; Complain: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "DDF::Find(@)", header: "DDF.hxx".}
proc Find*[T](DF: handle[TDF_Data]; Entry: Standard_CString; ID: Standard_GUID;
             A: var handle[T]; Complain: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "DDF::Find(@)", header: "DDF.hxx".}
proc ReturnLabel*(theCommands: var Draw_Interpretor; L: TDF_Label): var Draw_Interpretor {.
    importcpp: "DDF::ReturnLabel(@)", header: "DDF.hxx".}
proc AllCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "DDF::AllCommands(@)", header: "DDF.hxx".}
proc BasicCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "DDF::BasicCommands(@)", header: "DDF.hxx".}
proc DataCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "DDF::DataCommands(@)", header: "DDF.hxx".}
proc TransactionCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "DDF::TransactionCommands(@)", header: "DDF.hxx".}
proc BrowserCommands*(theCommands: var Draw_Interpretor) {.
    importcpp: "DDF::BrowserCommands(@)", header: "DDF.hxx".}