##  Created on: 2016-10-11
##  Created by: Ilya SEVRIKOV
##  Copyright (c) 2016 OPEN CASCADE SAS
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
  ../Graphic3d/Graphic3d_Group, ../Graphic3d/Graphic3d_Structure,
  ../Graphic3d/Graphic3d_StructureManager, ../Graphic3d/Graphic3d_TransformPers,
  ../Prs3d/Prs3d_LineAspect, ../Prs3d/Prs3d_ShadingAspect,
  ../Prs3d/Prs3d_TextAspect

discard "forward decl of V3d_View"
type
  V3d_Trihedron* {.importcpp: "V3d_Trihedron", header: "V3d_Trihedron.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## a
                                                                                                          ## default
                                                                                                          ## trihedron.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Fills
                                                                                                          ## Graphic3d_Group.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Custom
                                                                                                          ## Graphic3d_Structure
                                                                                                          ## implementation.

  V3d_Trihedronbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "V3d_Trihedron::get_type_name(@)",
                              header: "V3d_Trihedron.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "V3d_Trihedron::get_type_descriptor(@)",
    header: "V3d_Trihedron.hxx".}
proc DynamicType*(this: V3d_Trihedron): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_Trihedron.hxx".}
proc constructV3d_Trihedron*(): V3d_Trihedron {.constructor,
    importcpp: "V3d_Trihedron(@)", header: "V3d_Trihedron.hxx".}
proc destroyV3d_Trihedron*(this: var V3d_Trihedron) {.
    importcpp: "#.~V3d_Trihedron()", header: "V3d_Trihedron.hxx".}
proc SetWireframe*(this: var V3d_Trihedron; theAsWireframe: Standard_Boolean) {.
    importcpp: "SetWireframe", header: "V3d_Trihedron.hxx".}
proc SetPosition*(this: var V3d_Trihedron;
                 thePosition: Aspect_TypeOfTriedronPosition) {.
    importcpp: "SetPosition", header: "V3d_Trihedron.hxx".}
proc SetScale*(this: var V3d_Trihedron; theScale: Standard_Real) {.
    importcpp: "SetScale", header: "V3d_Trihedron.hxx".}
proc SetSizeRatio*(this: var V3d_Trihedron; theRatio: Standard_Real) {.
    importcpp: "SetSizeRatio", header: "V3d_Trihedron.hxx".}
proc SetArrowDiameter*(this: var V3d_Trihedron; theDiam: Standard_Real) {.
    importcpp: "SetArrowDiameter", header: "V3d_Trihedron.hxx".}
proc SetNbFacets*(this: var V3d_Trihedron; theNbFacets: Standard_Integer) {.
    importcpp: "SetNbFacets", header: "V3d_Trihedron.hxx".}
proc SetLabelsColor*(this: var V3d_Trihedron; theColor: Quantity_Color) {.
    importcpp: "SetLabelsColor", header: "V3d_Trihedron.hxx".}
proc SetArrowsColor*(this: var V3d_Trihedron; theXColor: Quantity_Color;
                    theYColor: Quantity_Color; theZColor: Quantity_Color) {.
    importcpp: "SetArrowsColor", header: "V3d_Trihedron.hxx".}
proc Display*(this: var V3d_Trihedron; theView: V3d_View) {.importcpp: "Display",
    header: "V3d_Trihedron.hxx".}
proc Erase*(this: var V3d_Trihedron) {.importcpp: "Erase", header: "V3d_Trihedron.hxx".}
proc DumpJson*(this: V3d_Trihedron; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "V3d_Trihedron.hxx".}
discard "forward decl of V3d_Trihedron"
type
  Handle_V3d_Trihedron* = handle[V3d_Trihedron]
