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
  IMeshToolsMeshAlgoFactory* {.importcpp: "IMeshTools_MeshAlgoFactory",
                              header: "IMeshTools_MeshAlgoFactory.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Destructor.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Constructor.


proc destroyIMeshToolsMeshAlgoFactory*(this: var IMeshToolsMeshAlgoFactory) {.
    importcpp: "#.~IMeshTools_MeshAlgoFactory()",
    header: "IMeshTools_MeshAlgoFactory.hxx".}
proc getAlgo*(this: IMeshToolsMeshAlgoFactory; theSurfaceType: GeomAbsSurfaceType;
             theParameters: IMeshToolsParameters): Handle[IMeshToolsMeshAlgo] {.
    noSideEffect, importcpp: "GetAlgo", header: "IMeshTools_MeshAlgoFactory.hxx".}
type
  IMeshToolsMeshAlgoFactorybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IMeshTools_MeshAlgoFactory::get_type_name(@)",
                            header: "IMeshTools_MeshAlgoFactory.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IMeshTools_MeshAlgoFactory::get_type_descriptor(@)",
    header: "IMeshTools_MeshAlgoFactory.hxx".}
proc dynamicType*(this: IMeshToolsMeshAlgoFactory): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IMeshTools_MeshAlgoFactory.hxx".}
