##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_XYZ,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESBasic_SubfigureDef"
discard "forward decl of gp_XYZ"
discard "forward decl of IGESBasic_SingularSubfigure"
discard "forward decl of IGESBasic_SingularSubfigure"
type
  Handle_IGESBasic_SingularSubfigure* = handle[IGESBasic_SingularSubfigure]

## ! defines SingularSubfigure, Type <408> Form <0>
## ! in package IGESBasic
## ! Defines the occurrence of a single instance of the
## ! defined Subfigure.

type
  IGESBasic_SingularSubfigure* {.importcpp: "IGESBasic_SingularSubfigure",
                                header: "IGESBasic_SingularSubfigure.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESBasic_SingularSubfigure*(): IGESBasic_SingularSubfigure {.
    constructor, importcpp: "IGESBasic_SingularSubfigure(@)",
    header: "IGESBasic_SingularSubfigure.hxx".}
proc Init*(this: var IGESBasic_SingularSubfigure;
          aSubfigureDef: handle[IGESBasic_SubfigureDef]; aTranslation: gp_XYZ;
          hasScale: Standard_Boolean; aScale: Standard_Real) {.importcpp: "Init",
    header: "IGESBasic_SingularSubfigure.hxx".}
proc Subfigure*(this: IGESBasic_SingularSubfigure): handle[IGESBasic_SubfigureDef] {.
    noSideEffect, importcpp: "Subfigure", header: "IGESBasic_SingularSubfigure.hxx".}
proc Translation*(this: IGESBasic_SingularSubfigure): gp_XYZ {.noSideEffect,
    importcpp: "Translation", header: "IGESBasic_SingularSubfigure.hxx".}
proc ScaleFactor*(this: IGESBasic_SingularSubfigure): Standard_Real {.noSideEffect,
    importcpp: "ScaleFactor", header: "IGESBasic_SingularSubfigure.hxx".}
proc HasScaleFactor*(this: IGESBasic_SingularSubfigure): Standard_Boolean {.
    noSideEffect, importcpp: "HasScaleFactor",
    header: "IGESBasic_SingularSubfigure.hxx".}
proc TransformedTranslation*(this: IGESBasic_SingularSubfigure): gp_XYZ {.
    noSideEffect, importcpp: "TransformedTranslation",
    header: "IGESBasic_SingularSubfigure.hxx".}
type
  IGESBasic_SingularSubfigurebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESBasic_SingularSubfigure::get_type_name(@)",
                              header: "IGESBasic_SingularSubfigure.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_SingularSubfigure::get_type_descriptor(@)",
    header: "IGESBasic_SingularSubfigure.hxx".}
proc DynamicType*(this: IGESBasic_SingularSubfigure): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_SingularSubfigure.hxx".}