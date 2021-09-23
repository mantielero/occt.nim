##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Niraj RANGWALA )
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
  ../Standard/Standard_Real, ../IGESData/IGESData_LineFontEntity

discard "forward decl of IGESBasic_SubfigureDef"
discard "forward decl of IGESGraph_LineFontDefTemplate"
discard "forward decl of IGESGraph_LineFontDefTemplate"
type
  Handle_IGESGraph_LineFontDefTemplate* = handle[IGESGraph_LineFontDefTemplate]

## ! defines IGESLineFontDefTemplate, Type <304> Form <1>
## ! in package IGESGraph
## !
## ! Line Font can be defined as a repetition od Template figure
## ! that is displayed at regularly spaced locations along a
## ! planer anchoring curve. The anchoring curve itself has
## ! no visual purpose.

type
  IGESGraph_LineFontDefTemplate* {.importcpp: "IGESGraph_LineFontDefTemplate",
                                  header: "IGESGraph_LineFontDefTemplate.hxx",
                                  bycopy.} = object of IGESData_LineFontEntity


proc constructIGESGraph_LineFontDefTemplate*(): IGESGraph_LineFontDefTemplate {.
    constructor, importcpp: "IGESGraph_LineFontDefTemplate(@)",
    header: "IGESGraph_LineFontDefTemplate.hxx".}
proc Init*(this: var IGESGraph_LineFontDefTemplate; anOrientation: Standard_Integer;
          aTemplate: handle[IGESBasic_SubfigureDef]; aDistance: Standard_Real;
          aScale: Standard_Real) {.importcpp: "Init",
                                 header: "IGESGraph_LineFontDefTemplate.hxx".}
proc Orientation*(this: IGESGraph_LineFontDefTemplate): Standard_Integer {.
    noSideEffect, importcpp: "Orientation",
    header: "IGESGraph_LineFontDefTemplate.hxx".}
proc TemplateEntity*(this: IGESGraph_LineFontDefTemplate): handle[
    IGESBasic_SubfigureDef] {.noSideEffect, importcpp: "TemplateEntity",
                             header: "IGESGraph_LineFontDefTemplate.hxx".}
proc Distance*(this: IGESGraph_LineFontDefTemplate): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "IGESGraph_LineFontDefTemplate.hxx".}
proc Scale*(this: IGESGraph_LineFontDefTemplate): Standard_Real {.noSideEffect,
    importcpp: "Scale", header: "IGESGraph_LineFontDefTemplate.hxx".}
type
  IGESGraph_LineFontDefTemplatebase_type* = IGESData_LineFontEntity

proc get_type_name*(): cstring {.importcpp: "IGESGraph_LineFontDefTemplate::get_type_name(@)",
                              header: "IGESGraph_LineFontDefTemplate.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGraph_LineFontDefTemplate::get_type_descriptor(@)",
    header: "IGESGraph_LineFontDefTemplate.hxx".}
proc DynamicType*(this: IGESGraph_LineFontDefTemplate): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGraph_LineFontDefTemplate.hxx".}