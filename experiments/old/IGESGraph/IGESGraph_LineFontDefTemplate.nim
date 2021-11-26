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

discard "forward decl of IGESBasic_SubfigureDef"
discard "forward decl of IGESGraph_LineFontDefTemplate"
discard "forward decl of IGESGraph_LineFontDefTemplate"
type
  HandleC1C1* = Handle[IGESGraphLineFontDefTemplate]

## ! defines IGESLineFontDefTemplate, Type <304> Form <1>
## ! in package IGESGraph
## !
## ! Line Font can be defined as a repetition od Template figure
## ! that is displayed at regularly spaced locations along a
## ! planer anchoring curve. The anchoring curve itself has
## ! no visual purpose.

type
  IGESGraphLineFontDefTemplate* {.importcpp: "IGESGraph_LineFontDefTemplate",
                                 header: "IGESGraph_LineFontDefTemplate.hxx",
                                 bycopy.} = object of IGESDataLineFontEntity


proc constructIGESGraphLineFontDefTemplate*(): IGESGraphLineFontDefTemplate {.
    constructor, importcpp: "IGESGraph_LineFontDefTemplate(@)",
    header: "IGESGraph_LineFontDefTemplate.hxx".}
proc init*(this: var IGESGraphLineFontDefTemplate; anOrientation: cint;
          aTemplate: Handle[IGESBasicSubfigureDef]; aDistance: cfloat;
          aScale: cfloat) {.importcpp: "Init",
                          header: "IGESGraph_LineFontDefTemplate.hxx".}
proc orientation*(this: IGESGraphLineFontDefTemplate): cint {.noSideEffect,
    importcpp: "Orientation", header: "IGESGraph_LineFontDefTemplate.hxx".}
proc templateEntity*(this: IGESGraphLineFontDefTemplate): Handle[
    IGESBasicSubfigureDef] {.noSideEffect, importcpp: "TemplateEntity",
                            header: "IGESGraph_LineFontDefTemplate.hxx".}
proc distance*(this: IGESGraphLineFontDefTemplate): cfloat {.noSideEffect,
    importcpp: "Distance", header: "IGESGraph_LineFontDefTemplate.hxx".}
proc scale*(this: IGESGraphLineFontDefTemplate): cfloat {.noSideEffect,
    importcpp: "Scale", header: "IGESGraph_LineFontDefTemplate.hxx".}
type
  IGESGraphLineFontDefTemplatebaseType* = IGESDataLineFontEntity

proc getTypeName*(): cstring {.importcpp: "IGESGraph_LineFontDefTemplate::get_type_name(@)",
                            header: "IGESGraph_LineFontDefTemplate.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_LineFontDefTemplate::get_type_descriptor(@)",
    header: "IGESGraph_LineFontDefTemplate.hxx".}
proc dynamicType*(this: IGESGraphLineFontDefTemplate): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGraph_LineFontDefTemplate.hxx".}

























