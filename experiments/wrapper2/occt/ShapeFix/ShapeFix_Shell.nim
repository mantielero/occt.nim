##  Created on: 1998-08-12
##  Created by: Galina KULIKOVA
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../TopoDS/TopoDS_Shell, ../TopoDS/TopoDS_Compound,
  ShapeFix_Root, ../ShapeExtend/ShapeExtend_Status,
  ../Message/Message_ProgressRange

discard "forward decl of ShapeFix_Face"
discard "forward decl of ShapeExtend_BasicMsgRegistrator"
when defined(Status):
  discard
discard "forward decl of ShapeFix_Shell"
discard "forward decl of ShapeFix_Shell"
type
  Handle_ShapeFix_Shell* = handle[ShapeFix_Shell]

## ! Fixing orientation of faces in shell

type
  ShapeFix_Shell* {.importcpp: "ShapeFix_Shell", header: "ShapeFix_Shell.hxx", bycopy.} = object of ShapeFix_Root ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor


proc constructShapeFix_Shell*(): ShapeFix_Shell {.constructor,
    importcpp: "ShapeFix_Shell(@)", header: "ShapeFix_Shell.hxx".}
proc constructShapeFix_Shell*(shape: TopoDS_Shell): ShapeFix_Shell {.constructor,
    importcpp: "ShapeFix_Shell(@)", header: "ShapeFix_Shell.hxx".}
proc Init*(this: var ShapeFix_Shell; shell: TopoDS_Shell) {.importcpp: "Init",
    header: "ShapeFix_Shell.hxx".}
proc Perform*(this: var ShapeFix_Shell;
             theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "Perform", header: "ShapeFix_Shell.hxx".}
proc FixFaceOrientation*(this: var ShapeFix_Shell; shell: TopoDS_Shell;
                        isAccountMultiConex: Standard_Boolean = Standard_True;
                        NonManifold: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "FixFaceOrientation", header: "ShapeFix_Shell.hxx".}
proc Shell*(this: var ShapeFix_Shell): TopoDS_Shell {.importcpp: "Shell",
    header: "ShapeFix_Shell.hxx".}
proc Shape*(this: var ShapeFix_Shell): TopoDS_Shape {.importcpp: "Shape",
    header: "ShapeFix_Shell.hxx".}
proc NbShells*(this: ShapeFix_Shell): Standard_Integer {.noSideEffect,
    importcpp: "NbShells", header: "ShapeFix_Shell.hxx".}
proc ErrorFaces*(this: ShapeFix_Shell): TopoDS_Compound {.noSideEffect,
    importcpp: "ErrorFaces", header: "ShapeFix_Shell.hxx".}
proc Status*(this: ShapeFix_Shell; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "Status", header: "ShapeFix_Shell.hxx".}
proc FixFaceTool*(this: var ShapeFix_Shell): handle[ShapeFix_Face] {.
    importcpp: "FixFaceTool", header: "ShapeFix_Shell.hxx".}
proc SetMsgRegistrator*(this: var ShapeFix_Shell;
                       msgreg: handle[ShapeExtend_BasicMsgRegistrator]) {.
    importcpp: "SetMsgRegistrator", header: "ShapeFix_Shell.hxx".}
proc SetPrecision*(this: var ShapeFix_Shell; preci: Standard_Real) {.
    importcpp: "SetPrecision", header: "ShapeFix_Shell.hxx".}
proc SetMinTolerance*(this: var ShapeFix_Shell; mintol: Standard_Real) {.
    importcpp: "SetMinTolerance", header: "ShapeFix_Shell.hxx".}
proc SetMaxTolerance*(this: var ShapeFix_Shell; maxtol: Standard_Real) {.
    importcpp: "SetMaxTolerance", header: "ShapeFix_Shell.hxx".}
proc FixFaceMode*(this: var ShapeFix_Shell): var Standard_Integer {.
    importcpp: "FixFaceMode", header: "ShapeFix_Shell.hxx".}
proc FixOrientationMode*(this: var ShapeFix_Shell): var Standard_Integer {.
    importcpp: "FixOrientationMode", header: "ShapeFix_Shell.hxx".}
proc SetNonManifoldFlag*(this: var ShapeFix_Shell; isNonManifold: Standard_Boolean) {.
    importcpp: "SetNonManifoldFlag", header: "ShapeFix_Shell.hxx".}
type
  ShapeFix_Shellbase_type* = ShapeFix_Root

proc get_type_name*(): cstring {.importcpp: "ShapeFix_Shell::get_type_name(@)",
                              header: "ShapeFix_Shell.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeFix_Shell::get_type_descriptor(@)",
    header: "ShapeFix_Shell.hxx".}
proc DynamicType*(this: ShapeFix_Shell): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_Shell.hxx".}