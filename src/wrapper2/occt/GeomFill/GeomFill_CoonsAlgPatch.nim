##  Created on: 1995-12-04
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt,
  ../Standard/Standard_Transient, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

discard "forward decl of GeomFill_Boundary"
discard "forward decl of Law_Function"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_CoonsAlgPatch"
discard "forward decl of GeomFill_CoonsAlgPatch"
type
  Handle_GeomFill_CoonsAlgPatch* = handle[GeomFill_CoonsAlgPatch]

## ! Provides  evaluation   methods on an   algorithmic
## ! patch (based on 4 Curves) defined by  its   boundaries and  blending
## ! functions.

type
  GeomFill_CoonsAlgPatch* {.importcpp: "GeomFill_CoonsAlgPatch",
                           header: "GeomFill_CoonsAlgPatch.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Constructs
                                                                                                  ## the
                                                                                                  ## algorithmic
                                                                                                  ## patch.
                                                                                                  ## By
                                                                                                  ## Default
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## constructed
                                                                                                  ## blending
                                                                                                  ## functions
                                                                                                  ## are
                                                                                                  ## linear.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Warning:
                                                                                                  ## No
                                                                                                  ## control
                                                                                                  ## is
                                                                                                  ## done
                                                                                                  ## on
                                                                                                  ## the
                                                                                                  ## bounds.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## B1/B3
                                                                                                  ## and
                                                                                                  ## B2/B4
                                                                                                  ## must
                                                                                                  ## be
                                                                                                  ## same
                                                                                                  ## range
                                                                                                  ## and
                                                                                                  ## well
                                                                                                  ## oriented.


proc constructGeomFill_CoonsAlgPatch*(B1: handle[GeomFill_Boundary];
                                     B2: handle[GeomFill_Boundary];
                                     B3: handle[GeomFill_Boundary];
                                     B4: handle[GeomFill_Boundary]): GeomFill_CoonsAlgPatch {.
    constructor, importcpp: "GeomFill_CoonsAlgPatch(@)",
    header: "GeomFill_CoonsAlgPatch.hxx".}
proc Func*(this: GeomFill_CoonsAlgPatch; f1: var handle[Law_Function];
          f2: var handle[Law_Function]) {.noSideEffect, importcpp: "Func",
                                       header: "GeomFill_CoonsAlgPatch.hxx".}
proc SetFunc*(this: var GeomFill_CoonsAlgPatch; f1: handle[Law_Function];
             f2: handle[Law_Function]) {.importcpp: "SetFunc",
                                       header: "GeomFill_CoonsAlgPatch.hxx".}
proc Value*(this: GeomFill_CoonsAlgPatch; U: Standard_Real; V: Standard_Real): gp_Pnt {.
    noSideEffect, importcpp: "Value", header: "GeomFill_CoonsAlgPatch.hxx".}
proc D1U*(this: GeomFill_CoonsAlgPatch; U: Standard_Real; V: Standard_Real): gp_Vec {.
    noSideEffect, importcpp: "D1U", header: "GeomFill_CoonsAlgPatch.hxx".}
proc D1V*(this: GeomFill_CoonsAlgPatch; U: Standard_Real; V: Standard_Real): gp_Vec {.
    noSideEffect, importcpp: "D1V", header: "GeomFill_CoonsAlgPatch.hxx".}
proc DUV*(this: GeomFill_CoonsAlgPatch; U: Standard_Real; V: Standard_Real): gp_Vec {.
    noSideEffect, importcpp: "DUV", header: "GeomFill_CoonsAlgPatch.hxx".}
proc Corner*(this: GeomFill_CoonsAlgPatch; I: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Corner", header: "GeomFill_CoonsAlgPatch.hxx".}
proc Bound*(this: GeomFill_CoonsAlgPatch; I: Standard_Integer): handle[
    GeomFill_Boundary] {.noSideEffect, importcpp: "Bound",
                        header: "GeomFill_CoonsAlgPatch.hxx".}
proc Func*(this: GeomFill_CoonsAlgPatch; I: Standard_Integer): handle[Law_Function] {.
    noSideEffect, importcpp: "Func", header: "GeomFill_CoonsAlgPatch.hxx".}
type
  GeomFill_CoonsAlgPatchbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "GeomFill_CoonsAlgPatch::get_type_name(@)",
                              header: "GeomFill_CoonsAlgPatch.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_CoonsAlgPatch::get_type_descriptor(@)",
    header: "GeomFill_CoonsAlgPatch.hxx".}
proc DynamicType*(this: GeomFill_CoonsAlgPatch): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomFill_CoonsAlgPatch.hxx".}