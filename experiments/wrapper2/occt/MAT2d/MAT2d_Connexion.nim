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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../gp/gp_Pnt2d, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean

discard "forward decl of gp_Pnt2d"
discard "forward decl of MAT2d_Connexion"
discard "forward decl of MAT2d_Connexion"
type
  Handle_MAT2d_Connexion* = handle[MAT2d_Connexion]

## ! A Connexion links two lines of items  in a set
## ! of  lines. It s contains two  points and their paramatric
## ! definitions on the lines.
## ! The items can be points or curves.

type
  MAT2d_Connexion* {.importcpp: "MAT2d_Connexion", header: "MAT2d_Connexion.hxx",
                    bycopy.} = object of Standard_Transient


proc constructMAT2d_Connexion*(): MAT2d_Connexion {.constructor,
    importcpp: "MAT2d_Connexion(@)", header: "MAT2d_Connexion.hxx".}
proc constructMAT2d_Connexion*(LineA: Standard_Integer; LineB: Standard_Integer;
                              ItemA: Standard_Integer; ItemB: Standard_Integer;
                              Distance: Standard_Real;
                              ParameterOnA: Standard_Real;
                              ParameterOnB: Standard_Real; PointA: gp_Pnt2d;
                              PointB: gp_Pnt2d): MAT2d_Connexion {.constructor,
    importcpp: "MAT2d_Connexion(@)", header: "MAT2d_Connexion.hxx".}
proc IndexFirstLine*(this: MAT2d_Connexion): Standard_Integer {.noSideEffect,
    importcpp: "IndexFirstLine", header: "MAT2d_Connexion.hxx".}
proc IndexSecondLine*(this: MAT2d_Connexion): Standard_Integer {.noSideEffect,
    importcpp: "IndexSecondLine", header: "MAT2d_Connexion.hxx".}
proc IndexItemOnFirst*(this: MAT2d_Connexion): Standard_Integer {.noSideEffect,
    importcpp: "IndexItemOnFirst", header: "MAT2d_Connexion.hxx".}
proc IndexItemOnSecond*(this: MAT2d_Connexion): Standard_Integer {.noSideEffect,
    importcpp: "IndexItemOnSecond", header: "MAT2d_Connexion.hxx".}
proc ParameterOnFirst*(this: MAT2d_Connexion): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnFirst", header: "MAT2d_Connexion.hxx".}
proc ParameterOnSecond*(this: MAT2d_Connexion): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnSecond", header: "MAT2d_Connexion.hxx".}
proc PointOnFirst*(this: MAT2d_Connexion): gp_Pnt2d {.noSideEffect,
    importcpp: "PointOnFirst", header: "MAT2d_Connexion.hxx".}
proc PointOnSecond*(this: MAT2d_Connexion): gp_Pnt2d {.noSideEffect,
    importcpp: "PointOnSecond", header: "MAT2d_Connexion.hxx".}
proc Distance*(this: MAT2d_Connexion): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "MAT2d_Connexion.hxx".}
proc IndexFirstLine*(this: var MAT2d_Connexion; anIndex: Standard_Integer) {.
    importcpp: "IndexFirstLine", header: "MAT2d_Connexion.hxx".}
proc IndexSecondLine*(this: var MAT2d_Connexion; anIndex: Standard_Integer) {.
    importcpp: "IndexSecondLine", header: "MAT2d_Connexion.hxx".}
proc IndexItemOnFirst*(this: var MAT2d_Connexion; anIndex: Standard_Integer) {.
    importcpp: "IndexItemOnFirst", header: "MAT2d_Connexion.hxx".}
proc IndexItemOnSecond*(this: var MAT2d_Connexion; anIndex: Standard_Integer) {.
    importcpp: "IndexItemOnSecond", header: "MAT2d_Connexion.hxx".}
proc ParameterOnFirst*(this: var MAT2d_Connexion; aParameter: Standard_Real) {.
    importcpp: "ParameterOnFirst", header: "MAT2d_Connexion.hxx".}
proc ParameterOnSecond*(this: var MAT2d_Connexion; aParameter: Standard_Real) {.
    importcpp: "ParameterOnSecond", header: "MAT2d_Connexion.hxx".}
proc PointOnFirst*(this: var MAT2d_Connexion; aPoint: gp_Pnt2d) {.
    importcpp: "PointOnFirst", header: "MAT2d_Connexion.hxx".}
proc PointOnSecond*(this: var MAT2d_Connexion; aPoint: gp_Pnt2d) {.
    importcpp: "PointOnSecond", header: "MAT2d_Connexion.hxx".}
proc Distance*(this: var MAT2d_Connexion; aDistance: Standard_Real) {.
    importcpp: "Distance", header: "MAT2d_Connexion.hxx".}
proc Reverse*(this: MAT2d_Connexion): handle[MAT2d_Connexion] {.noSideEffect,
    importcpp: "Reverse", header: "MAT2d_Connexion.hxx".}
proc IsAfter*(this: MAT2d_Connexion; aConnexion: handle[MAT2d_Connexion];
             aSense: Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "IsAfter", header: "MAT2d_Connexion.hxx".}
proc Dump*(this: MAT2d_Connexion; Deep: Standard_Integer = 0;
          Offset: Standard_Integer = 0) {.noSideEffect, importcpp: "Dump",
                                      header: "MAT2d_Connexion.hxx".}
type
  MAT2d_Connexionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MAT2d_Connexion::get_type_name(@)",
                              header: "MAT2d_Connexion.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MAT2d_Connexion::get_type_descriptor(@)",
    header: "MAT2d_Connexion.hxx".}
proc DynamicType*(this: MAT2d_Connexion): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT2d_Connexion.hxx".}