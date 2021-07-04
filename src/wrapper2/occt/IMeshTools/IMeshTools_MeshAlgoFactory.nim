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
  ../GeomAbs/GeomAbs_SurfaceType, IMeshTools_MeshAlgo

discard "forward decl of IMeshTools_Parameters"
type
  IMeshTools_MeshAlgoFactory* {.importcpp: "IMeshTools_MeshAlgoFactory",
                               header: "IMeshTools_MeshAlgoFactory.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Destructor.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Constructor.


proc destroyIMeshTools_MeshAlgoFactory*(this: var IMeshTools_MeshAlgoFactory) {.
    importcpp: "#.~IMeshTools_MeshAlgoFactory()",
    header: "IMeshTools_MeshAlgoFactory.hxx".}
proc GetAlgo*(this: IMeshTools_MeshAlgoFactory;
             theSurfaceType: GeomAbs_SurfaceType;
             theParameters: IMeshTools_Parameters): handle[IMeshTools_MeshAlgo] {.
    noSideEffect, importcpp: "GetAlgo", header: "IMeshTools_MeshAlgoFactory.hxx".}
type
  IMeshTools_MeshAlgoFactorybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IMeshTools_MeshAlgoFactory::get_type_name(@)",
                              header: "IMeshTools_MeshAlgoFactory.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IMeshTools_MeshAlgoFactory::get_type_descriptor(@)",
    header: "IMeshTools_MeshAlgoFactory.hxx".}
proc DynamicType*(this: IMeshTools_MeshAlgoFactory): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IMeshTools_MeshAlgoFactory.hxx".}