##  Created on: 2014-11-13
##  Created by: Maxim YAKUNIN
##  Copyright (c) 2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ShapeFix_Root, ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of ShapeFix_FixSmallSolid"
discard "forward decl of ShapeFix_FixSmallSolid"
type
  Handle_ShapeFix_FixSmallSolid* = handle[ShapeFix_FixSmallSolid]

## ! Fixing solids with small size

type
  ShapeFix_FixSmallSolid* {.importcpp: "ShapeFix_FixSmallSolid",
                           header: "ShapeFix_FixSmallSolid.hxx", bycopy.} = object of ShapeFix_Root ##
                                                                                             ## !
                                                                                             ## Construct


proc constructShapeFix_FixSmallSolid*(): ShapeFix_FixSmallSolid {.constructor,
    importcpp: "ShapeFix_FixSmallSolid(@)", header: "ShapeFix_FixSmallSolid.hxx".}
proc SetFixMode*(this: var ShapeFix_FixSmallSolid; theMode: Standard_Integer) {.
    importcpp: "SetFixMode", header: "ShapeFix_FixSmallSolid.hxx".}
proc SetVolumeThreshold*(this: var ShapeFix_FixSmallSolid;
                        theThreshold: Standard_Real = -1.0) {.
    importcpp: "SetVolumeThreshold", header: "ShapeFix_FixSmallSolid.hxx".}
proc SetWidthFactorThreshold*(this: var ShapeFix_FixSmallSolid;
                             theThreshold: Standard_Real = -1.0) {.
    importcpp: "SetWidthFactorThreshold", header: "ShapeFix_FixSmallSolid.hxx".}
proc Remove*(this: ShapeFix_FixSmallSolid; theShape: TopoDS_Shape;
            theContext: handle[ShapeBuild_ReShape]): TopoDS_Shape {.noSideEffect,
    importcpp: "Remove", header: "ShapeFix_FixSmallSolid.hxx".}
proc Merge*(this: ShapeFix_FixSmallSolid; theShape: TopoDS_Shape;
           theContext: handle[ShapeBuild_ReShape]): TopoDS_Shape {.noSideEffect,
    importcpp: "Merge", header: "ShapeFix_FixSmallSolid.hxx".}
type
  ShapeFix_FixSmallSolidbase_type* = ShapeFix_Root

proc get_type_name*(): cstring {.importcpp: "ShapeFix_FixSmallSolid::get_type_name(@)",
                              header: "ShapeFix_FixSmallSolid.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeFix_FixSmallSolid::get_type_descriptor(@)",
    header: "ShapeFix_FixSmallSolid.hxx".}
proc DynamicType*(this: ShapeFix_FixSmallSolid): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeFix_FixSmallSolid.hxx".}