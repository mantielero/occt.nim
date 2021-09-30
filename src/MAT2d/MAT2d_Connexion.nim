##  Created on: 1993-10-07
##  Created by: Yves FRICAUD
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

discard "forward decl of gp_Pnt2d"
discard "forward decl of MAT2d_Connexion"
discard "forward decl of MAT2d_Connexion"
type
  HandleC1C1* = Handle[MAT2dConnexion]

## ! A Connexion links two lines of items  in a set
## ! of  lines. It s contains two  points and their paramatric
## ! definitions on the lines.
## ! The items can be points or curves.

type
  MAT2dConnexion* {.importcpp: "MAT2d_Connexion", header: "MAT2d_Connexion.hxx",
                   bycopy.} = object of StandardTransient


proc constructMAT2dConnexion*(): MAT2dConnexion {.constructor,
    importcpp: "MAT2d_Connexion(@)", header: "MAT2d_Connexion.hxx".}
proc constructMAT2dConnexion*(lineA: cint; lineB: cint; itemA: cint; itemB: cint;
                             distance: cfloat; parameterOnA: cfloat;
                             parameterOnB: cfloat; pointA: Pnt2d; pointB: Pnt2d): MAT2dConnexion {.
    constructor, importcpp: "MAT2d_Connexion(@)", header: "MAT2d_Connexion.hxx".}
proc indexFirstLine*(this: MAT2dConnexion): cint {.noSideEffect,
    importcpp: "IndexFirstLine", header: "MAT2d_Connexion.hxx".}
proc indexSecondLine*(this: MAT2dConnexion): cint {.noSideEffect,
    importcpp: "IndexSecondLine", header: "MAT2d_Connexion.hxx".}
proc indexItemOnFirst*(this: MAT2dConnexion): cint {.noSideEffect,
    importcpp: "IndexItemOnFirst", header: "MAT2d_Connexion.hxx".}
proc indexItemOnSecond*(this: MAT2dConnexion): cint {.noSideEffect,
    importcpp: "IndexItemOnSecond", header: "MAT2d_Connexion.hxx".}
proc parameterOnFirst*(this: MAT2dConnexion): cfloat {.noSideEffect,
    importcpp: "ParameterOnFirst", header: "MAT2d_Connexion.hxx".}
proc parameterOnSecond*(this: MAT2dConnexion): cfloat {.noSideEffect,
    importcpp: "ParameterOnSecond", header: "MAT2d_Connexion.hxx".}
proc pointOnFirst*(this: MAT2dConnexion): Pnt2d {.noSideEffect,
    importcpp: "PointOnFirst", header: "MAT2d_Connexion.hxx".}
proc pointOnSecond*(this: MAT2dConnexion): Pnt2d {.noSideEffect,
    importcpp: "PointOnSecond", header: "MAT2d_Connexion.hxx".}
proc distance*(this: MAT2dConnexion): cfloat {.noSideEffect, importcpp: "Distance",
    header: "MAT2d_Connexion.hxx".}
proc indexFirstLine*(this: var MAT2dConnexion; anIndex: cint) {.
    importcpp: "IndexFirstLine", header: "MAT2d_Connexion.hxx".}
proc indexSecondLine*(this: var MAT2dConnexion; anIndex: cint) {.
    importcpp: "IndexSecondLine", header: "MAT2d_Connexion.hxx".}
proc indexItemOnFirst*(this: var MAT2dConnexion; anIndex: cint) {.
    importcpp: "IndexItemOnFirst", header: "MAT2d_Connexion.hxx".}
proc indexItemOnSecond*(this: var MAT2dConnexion; anIndex: cint) {.
    importcpp: "IndexItemOnSecond", header: "MAT2d_Connexion.hxx".}
proc parameterOnFirst*(this: var MAT2dConnexion; aParameter: cfloat) {.
    importcpp: "ParameterOnFirst", header: "MAT2d_Connexion.hxx".}
proc parameterOnSecond*(this: var MAT2dConnexion; aParameter: cfloat) {.
    importcpp: "ParameterOnSecond", header: "MAT2d_Connexion.hxx".}
proc pointOnFirst*(this: var MAT2dConnexion; aPoint: Pnt2d) {.
    importcpp: "PointOnFirst", header: "MAT2d_Connexion.hxx".}
proc pointOnSecond*(this: var MAT2dConnexion; aPoint: Pnt2d) {.
    importcpp: "PointOnSecond", header: "MAT2d_Connexion.hxx".}
proc distance*(this: var MAT2dConnexion; aDistance: cfloat) {.importcpp: "Distance",
    header: "MAT2d_Connexion.hxx".}
proc reverse*(this: MAT2dConnexion): Handle[MAT2dConnexion] {.noSideEffect,
    importcpp: "Reverse", header: "MAT2d_Connexion.hxx".}
proc isAfter*(this: MAT2dConnexion; aConnexion: Handle[MAT2dConnexion];
             aSense: cfloat): bool {.noSideEffect, importcpp: "IsAfter",
                                  header: "MAT2d_Connexion.hxx".}
proc dump*(this: MAT2dConnexion; deep: cint = 0; offset: cint = 0) {.noSideEffect,
    importcpp: "Dump", header: "MAT2d_Connexion.hxx".}
type
  MAT2dConnexionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MAT2d_Connexion::get_type_name(@)",
                            header: "MAT2d_Connexion.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MAT2d_Connexion::get_type_descriptor(@)",
    header: "MAT2d_Connexion.hxx".}
proc dynamicType*(this: MAT2dConnexion): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT2d_Connexion.hxx".}

























