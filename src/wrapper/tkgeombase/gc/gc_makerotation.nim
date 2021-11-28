##  Created on: 1992-09-28
##  Created by: Remi GILET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Geom_Transformation"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
type
  MakeRotation* {.importcpp: "GC_MakeRotation", header: "GC_MakeRotation.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Constructs
                                                                                         ## a
                                                                                         ## rotation
                                                                                         ## through
                                                                                         ## angle
                                                                                         ## Angle
                                                                                         ## about
                                                                                         ## the
                                                                                         ## axis
                                                                                         ## defined
                                                                                         ## by
                                                                                         ## the
                                                                                         ## line
                                                                                         ## Line.


proc newMakeRotation*(line: Lin; angle: cfloat): MakeRotation {.cdecl, constructor,
    importcpp: "GC_MakeRotation(@)", dynlib: tkgeombase.}
proc newMakeRotation*(axis: Ax1; angle: cfloat): MakeRotation {.cdecl, constructor,
    importcpp: "GC_MakeRotation(@)", dynlib: tkgeombase.}
proc newMakeRotation*(point: Pnt; direc: Dir; angle: cfloat): MakeRotation {.cdecl,
    constructor, importcpp: "GC_MakeRotation(@)", dynlib: tkgeombase.}
proc value*(this: MakeRotation): Handle[GeomTransformation] {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkgeombase.}
converter `constopencascade`*(this: MakeRotation): Handle[GeomTransformation] {.
    noSideEffect, cdecl, importcpp: "GC_MakeRotation::operator constopencascade",
    dynlib: tkgeombase.}