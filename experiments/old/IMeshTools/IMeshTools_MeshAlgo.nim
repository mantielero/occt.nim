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

discard "forward decl of IMeshTools_Parameters"
type
  IMeshToolsMeshAlgo* {.importcpp: "IMeshTools_MeshAlgo",
                       header: "IMeshTools_MeshAlgo.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Destructor.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Constructor.


proc destroyIMeshToolsMeshAlgo*(this: var IMeshToolsMeshAlgo) {.
    importcpp: "#.~IMeshTools_MeshAlgo()", header: "IMeshTools_MeshAlgo.hxx".}
proc perform*(this: var IMeshToolsMeshAlgo; theDFace: IFaceHandle;
             theParameters: IMeshToolsParameters; theRange: MessageProgressRange) {.
    importcpp: "Perform", header: "IMeshTools_MeshAlgo.hxx".}
type
  IMeshToolsMeshAlgobaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IMeshTools_MeshAlgo::get_type_name(@)",
                            header: "IMeshTools_MeshAlgo.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IMeshTools_MeshAlgo::get_type_descriptor(@)",
    header: "IMeshTools_MeshAlgo.hxx".}
proc dynamicType*(this: IMeshToolsMeshAlgo): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IMeshTools_MeshAlgo.hxx".}

























