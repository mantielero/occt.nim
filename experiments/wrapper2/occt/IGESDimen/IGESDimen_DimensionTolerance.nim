##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen (Anand NATRAJAN)
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
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESDimen_DimensionTolerance"
discard "forward decl of IGESDimen_DimensionTolerance"
type
  Handle_IGESDimen_DimensionTolerance* = handle[IGESDimen_DimensionTolerance]

## ! defines Dimension Tolerance, Type <406>, Form <29>
## ! in package IGESDimen
## ! Provides tolerance information for a dimension which
## ! can be used by the receiving system to regenerate the
## ! dimension.

type
  IGESDimen_DimensionTolerance* {.importcpp: "IGESDimen_DimensionTolerance",
                                 header: "IGESDimen_DimensionTolerance.hxx",
                                 bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_DimensionTolerance*(): IGESDimen_DimensionTolerance {.
    constructor, importcpp: "IGESDimen_DimensionTolerance(@)",
    header: "IGESDimen_DimensionTolerance.hxx".}
proc Init*(this: var IGESDimen_DimensionTolerance; nbPropVal: Standard_Integer;
          aSecTolFlag: Standard_Integer; aTolType: Standard_Integer;
          aTolPlaceFlag: Standard_Integer; anUpperTol: Standard_Real;
          aLowerTol: Standard_Real; aSignFlag: Standard_Boolean;
          aFracFlag: Standard_Integer; aPrecision: Standard_Integer) {.
    importcpp: "Init", header: "IGESDimen_DimensionTolerance.hxx".}
proc NbPropertyValues*(this: IGESDimen_DimensionTolerance): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESDimen_DimensionTolerance.hxx".}
proc SecondaryToleranceFlag*(this: IGESDimen_DimensionTolerance): Standard_Integer {.
    noSideEffect, importcpp: "SecondaryToleranceFlag",
    header: "IGESDimen_DimensionTolerance.hxx".}
proc ToleranceType*(this: IGESDimen_DimensionTolerance): Standard_Integer {.
    noSideEffect, importcpp: "ToleranceType",
    header: "IGESDimen_DimensionTolerance.hxx".}
proc TolerancePlacementFlag*(this: IGESDimen_DimensionTolerance): Standard_Integer {.
    noSideEffect, importcpp: "TolerancePlacementFlag",
    header: "IGESDimen_DimensionTolerance.hxx".}
proc UpperTolerance*(this: IGESDimen_DimensionTolerance): Standard_Real {.
    noSideEffect, importcpp: "UpperTolerance",
    header: "IGESDimen_DimensionTolerance.hxx".}
proc LowerTolerance*(this: IGESDimen_DimensionTolerance): Standard_Real {.
    noSideEffect, importcpp: "LowerTolerance",
    header: "IGESDimen_DimensionTolerance.hxx".}
proc SignSuppressionFlag*(this: IGESDimen_DimensionTolerance): Standard_Boolean {.
    noSideEffect, importcpp: "SignSuppressionFlag",
    header: "IGESDimen_DimensionTolerance.hxx".}
proc FractionFlag*(this: IGESDimen_DimensionTolerance): Standard_Integer {.
    noSideEffect, importcpp: "FractionFlag",
    header: "IGESDimen_DimensionTolerance.hxx".}
proc Precision*(this: IGESDimen_DimensionTolerance): Standard_Integer {.
    noSideEffect, importcpp: "Precision",
    header: "IGESDimen_DimensionTolerance.hxx".}
type
  IGESDimen_DimensionTolerancebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_DimensionTolerance::get_type_name(@)",
                              header: "IGESDimen_DimensionTolerance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_DimensionTolerance::get_type_descriptor(@)",
    header: "IGESDimen_DimensionTolerance.hxx".}
proc DynamicType*(this: IGESDimen_DimensionTolerance): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_DimensionTolerance.hxx".}