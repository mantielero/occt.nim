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

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of ShapeFix_FixSmallSolid"
discard "forward decl of ShapeFix_FixSmallSolid"
type
  HandleC1C1* = Handle[ShapeFixFixSmallSolid]

## ! Fixing solids with small size

type
  ShapeFixFixSmallSolid* {.importcpp: "ShapeFix_FixSmallSolid",
                          header: "ShapeFix_FixSmallSolid.hxx", bycopy.} = object of ShapeFixRoot ##
                                                                                           ## !
                                                                                           ## Construct


proc constructShapeFixFixSmallSolid*(): ShapeFixFixSmallSolid {.constructor,
    importcpp: "ShapeFix_FixSmallSolid(@)", header: "ShapeFix_FixSmallSolid.hxx".}
proc setFixMode*(this: var ShapeFixFixSmallSolid; theMode: cint) {.
    importcpp: "SetFixMode", header: "ShapeFix_FixSmallSolid.hxx".}
proc setVolumeThreshold*(this: var ShapeFixFixSmallSolid;
                        theThreshold: cfloat = -1.0) {.
    importcpp: "SetVolumeThreshold", header: "ShapeFix_FixSmallSolid.hxx".}
proc setWidthFactorThreshold*(this: var ShapeFixFixSmallSolid;
                             theThreshold: cfloat = -1.0) {.
    importcpp: "SetWidthFactorThreshold", header: "ShapeFix_FixSmallSolid.hxx".}
proc remove*(this: ShapeFixFixSmallSolid; theShape: TopoDS_Shape;
            theContext: Handle[ShapeBuildReShape]): TopoDS_Shape {.noSideEffect,
    importcpp: "Remove", header: "ShapeFix_FixSmallSolid.hxx".}
proc merge*(this: ShapeFixFixSmallSolid; theShape: TopoDS_Shape;
           theContext: Handle[ShapeBuildReShape]): TopoDS_Shape {.noSideEffect,
    importcpp: "Merge", header: "ShapeFix_FixSmallSolid.hxx".}
type
  ShapeFixFixSmallSolidbaseType* = ShapeFixRoot

proc getTypeName*(): cstring {.importcpp: "ShapeFix_FixSmallSolid::get_type_name(@)",
                            header: "ShapeFix_FixSmallSolid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeFix_FixSmallSolid::get_type_descriptor(@)",
    header: "ShapeFix_FixSmallSolid.hxx".}
proc dynamicType*(this: ShapeFixFixSmallSolid): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeFix_FixSmallSolid.hxx".}

























