##  Created on: 2016-07-07
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
  ../Standard/Standard_Transient, ../Standard/Standard_Type,
  ../IMeshData/IMeshData_Types, ../Message/Message_ProgressRange

discard "forward decl of IMeshTools_Parameters"
type
  IMeshTools_MeshAlgo* {.importcpp: "IMeshTools_MeshAlgo",
                        header: "IMeshTools_MeshAlgo.hxx", bycopy.} = object of Standard_Transient ##
                                                                                            ## !
                                                                                            ## Destructor.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Constructor.


proc destroyIMeshTools_MeshAlgo*(this: var IMeshTools_MeshAlgo) {.
    importcpp: "#.~IMeshTools_MeshAlgo()", header: "IMeshTools_MeshAlgo.hxx".}
proc Perform*(this: var IMeshTools_MeshAlgo; theDFace: IFaceHandle;
             theParameters: IMeshTools_Parameters; theRange: Message_ProgressRange) {.
    importcpp: "Perform", header: "IMeshTools_MeshAlgo.hxx".}
type
  IMeshTools_MeshAlgobase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IMeshTools_MeshAlgo::get_type_name(@)",
                              header: "IMeshTools_MeshAlgo.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IMeshTools_MeshAlgo::get_type_descriptor(@)",
    header: "IMeshTools_MeshAlgo.hxx".}
proc DynamicType*(this: IMeshTools_MeshAlgo): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshTools_MeshAlgo.hxx".}