##  Created on: 2016-04-19
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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
  ../Standard/Standard_ErrorHandler, ../Standard/Standard_Failure,
  ../Standard/Standard_Transient, ../Standard/Standard_Type,
  ../Message/Message_ProgressRange

discard "forward decl of IMeshData_Model"
discard "forward decl of IMeshTools_Parameters"
type
  IMeshTools_ModelAlgo* {.importcpp: "IMeshTools_ModelAlgo",
                         header: "IMeshTools_ModelAlgo.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Destructor.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Constructor.


proc destroyIMeshTools_ModelAlgo*(this: var IMeshTools_ModelAlgo) {.
    importcpp: "#.~IMeshTools_ModelAlgo()", header: "IMeshTools_ModelAlgo.hxx".}
proc Perform*(this: var IMeshTools_ModelAlgo; theModel: handle[IMeshData_Model];
             theParameters: IMeshTools_Parameters; theRange: Message_ProgressRange): Standard_Boolean {.
    importcpp: "Perform", header: "IMeshTools_ModelAlgo.hxx".}
type
  IMeshTools_ModelAlgobase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IMeshTools_ModelAlgo::get_type_name(@)",
                              header: "IMeshTools_ModelAlgo.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IMeshTools_ModelAlgo::get_type_descriptor(@)",
    header: "IMeshTools_ModelAlgo.hxx".}
proc DynamicType*(this: IMeshTools_ModelAlgo): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshTools_ModelAlgo.hxx".}