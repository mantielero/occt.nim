##  Created on: 1993-03-24
##  Created by: JCV
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_VectorWithNullMagnitude"
discard "forward decl of gp_Vec2d"
discard "forward decl of Geom2d_Vector"
discard "forward decl of Geom2d_Vector"
type
  HandleGeom2dVector* = Handle[Geom2dVector]

## ! The abstract class Vector describes the common
## ! behavior of vectors in 2D space.
## ! The Geom2d package provides two concrete
## ! classes of vectors: Geom2d_Direction (unit vector)
## ! and Geom2d_VectorWithMagnitude.

type
  Geom2dVector* {.importcpp: "Geom2d_Vector", header: "Geom2d_Vector.hxx", bycopy.} = object of Geom2dGeometry ##
                                                                                                     ## !
                                                                                                     ## Reverses
                                                                                                     ## the
                                                                                                     ## vector
                                                                                                     ## <me>.
    opencascade* {.importc: "opencascade".}: StandardNODISCARD


proc reverse*(this: var Geom2dVector) {.importcpp: "Reverse",
                                    header: "Geom2d_Vector.hxx".}
## !!!Ignored construct:  :: handle < Geom2d_Vector > [end of template] Reversed ( ) const ;
## Error: identifier expected, but got: ::!!!

proc angle*(this: Geom2dVector; other: Handle[Geom2dVector]): StandardReal {.
    noSideEffect, importcpp: "Angle", header: "Geom2d_Vector.hxx".}
proc coord*(this: Geom2dVector; x: var StandardReal; y: var StandardReal) {.noSideEffect,
    importcpp: "Coord", header: "Geom2d_Vector.hxx".}
proc magnitude*(this: Geom2dVector): StandardReal {.noSideEffect,
    importcpp: "Magnitude", header: "Geom2d_Vector.hxx".}
proc squareMagnitude*(this: Geom2dVector): StandardReal {.noSideEffect,
    importcpp: "SquareMagnitude", header: "Geom2d_Vector.hxx".}
proc x*(this: Geom2dVector): StandardReal {.noSideEffect, importcpp: "X",
                                        header: "Geom2d_Vector.hxx".}
proc y*(this: Geom2dVector): StandardReal {.noSideEffect, importcpp: "Y",
                                        header: "Geom2d_Vector.hxx".}
proc crossed*(this: Geom2dVector; other: Handle[Geom2dVector]): StandardReal {.
    noSideEffect, importcpp: "Crossed", header: "Geom2d_Vector.hxx".}
proc dot*(this: Geom2dVector; other: Handle[Geom2dVector]): StandardReal {.
    noSideEffect, importcpp: "Dot", header: "Geom2d_Vector.hxx".}
proc vec2d*(this: Geom2dVector): GpVec2d {.noSideEffect, importcpp: "Vec2d",
                                       header: "Geom2d_Vector.hxx".}
type
  Geom2dVectorbaseType* = Geom2dGeometry

proc getTypeName*(): cstring {.importcpp: "Geom2d_Vector::get_type_name(@)",
                            header: "Geom2d_Vector.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom2d_Vector::get_type_descriptor(@)",
    header: "Geom2d_Vector.hxx".}
proc dynamicType*(this: Geom2dVector): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom2d_Vector.hxx".}

