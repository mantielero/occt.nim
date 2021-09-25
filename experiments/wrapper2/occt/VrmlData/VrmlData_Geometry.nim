##  Created on: 2006-05-25
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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

## *
##   Implementation of the Geometry node.
##   Contains the topological representation (TopoDS_Shell) of the VRML geometry
##

type
  VrmlDataGeometry* {.importcpp: "VrmlData_Geometry",
                     header: "VrmlData_Geometry.hxx", bycopy.} = object of VrmlDataNode ##  ---------- PUBLIC METHODS ----------
                                                                                 ## *
                                                                                 ##  Empty constructor
                                                                                 ##
                                                                                 ##  ---------- PROTECTED METHODS ----------
                                                                                 ## *
                                                                                 ##  Set the TShape.
                                                                                 ##
                                                                                 ##  ---------- PROTECTED FIELDS ----------
                                                                                 ##  Declaration of CASCADE RTTI


proc constructVrmlDataGeometry*(): VrmlDataGeometry {.constructor,
    importcpp: "VrmlData_Geometry(@)", header: "VrmlData_Geometry.hxx".}
proc constructVrmlDataGeometry*(theScene: VrmlDataScene; theName: cstring): VrmlDataGeometry {.
    constructor, importcpp: "VrmlData_Geometry(@)", header: "VrmlData_Geometry.hxx".}
proc tShape*(this: var VrmlDataGeometry): Handle[TopoDS_TShape] {.
    importcpp: "TShape", header: "VrmlData_Geometry.hxx".}
type
  VrmlDataGeometrybaseType* = VrmlDataNode

proc getTypeName*(): cstring {.importcpp: "VrmlData_Geometry::get_type_name(@)",
                            header: "VrmlData_Geometry.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_Geometry::get_type_descriptor(@)",
    header: "VrmlData_Geometry.hxx".}
proc dynamicType*(this: VrmlDataGeometry): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Geometry.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Geometry"
type
  HandleVrmlDataGeometry* = Handle[VrmlDataGeometry]

