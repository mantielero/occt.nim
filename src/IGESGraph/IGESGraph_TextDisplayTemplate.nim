##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
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

discard "forward decl of IGESGraph_TextFontDef"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESGraph_TextDisplayTemplate"
discard "forward decl of IGESGraph_TextDisplayTemplate"
type
  HandleC1C1* = Handle[IGESGraphTextDisplayTemplate]

## ! defines IGES TextDisplayTemplate Entity,
## ! Type <312>, form <0, 1> in package IGESGraph
## !
## ! Used to set parameters for display of information
## ! which has been logically included in another entity
## ! as a parameter value

type
  IGESGraphTextDisplayTemplate* {.importcpp: "IGESGraph_TextDisplayTemplate",
                                 header: "IGESGraph_TextDisplayTemplate.hxx",
                                 bycopy.} = object of IGESDataIGESEntity


proc constructIGESGraphTextDisplayTemplate*(): IGESGraphTextDisplayTemplate {.
    constructor, importcpp: "IGESGraph_TextDisplayTemplate(@)",
    header: "IGESGraph_TextDisplayTemplate.hxx".}
proc init*(this: var IGESGraphTextDisplayTemplate; aWidth: cfloat; aHeight: cfloat;
          aFontCode: cint; aFontEntity: Handle[IGESGraphTextFontDef];
          aSlantAngle: cfloat; aRotationAngle: cfloat; aMirrorFlag: cint;
          aRotationFlag: cint; aCorner: Xyz) {.importcpp: "Init",
    header: "IGESGraph_TextDisplayTemplate.hxx".}
proc setIncremental*(this: var IGESGraphTextDisplayTemplate; mode: bool) {.
    importcpp: "SetIncremental", header: "IGESGraph_TextDisplayTemplate.hxx".}
proc isIncremental*(this: IGESGraphTextDisplayTemplate): bool {.noSideEffect,
    importcpp: "IsIncremental", header: "IGESGraph_TextDisplayTemplate.hxx".}
proc boxWidth*(this: IGESGraphTextDisplayTemplate): cfloat {.noSideEffect,
    importcpp: "BoxWidth", header: "IGESGraph_TextDisplayTemplate.hxx".}
proc boxHeight*(this: IGESGraphTextDisplayTemplate): cfloat {.noSideEffect,
    importcpp: "BoxHeight", header: "IGESGraph_TextDisplayTemplate.hxx".}
proc isFontEntity*(this: IGESGraphTextDisplayTemplate): bool {.noSideEffect,
    importcpp: "IsFontEntity", header: "IGESGraph_TextDisplayTemplate.hxx".}
proc fontCode*(this: IGESGraphTextDisplayTemplate): cint {.noSideEffect,
    importcpp: "FontCode", header: "IGESGraph_TextDisplayTemplate.hxx".}
proc fontEntity*(this: IGESGraphTextDisplayTemplate): Handle[IGESGraphTextFontDef] {.
    noSideEffect, importcpp: "FontEntity",
    header: "IGESGraph_TextDisplayTemplate.hxx".}
proc slantAngle*(this: IGESGraphTextDisplayTemplate): cfloat {.noSideEffect,
    importcpp: "SlantAngle", header: "IGESGraph_TextDisplayTemplate.hxx".}
proc rotationAngle*(this: IGESGraphTextDisplayTemplate): cfloat {.noSideEffect,
    importcpp: "RotationAngle", header: "IGESGraph_TextDisplayTemplate.hxx".}
proc mirrorFlag*(this: IGESGraphTextDisplayTemplate): cint {.noSideEffect,
    importcpp: "MirrorFlag", header: "IGESGraph_TextDisplayTemplate.hxx".}
proc rotateFlag*(this: IGESGraphTextDisplayTemplate): cint {.noSideEffect,
    importcpp: "RotateFlag", header: "IGESGraph_TextDisplayTemplate.hxx".}
proc startingCorner*(this: IGESGraphTextDisplayTemplate): Pnt {.noSideEffect,
    importcpp: "StartingCorner", header: "IGESGraph_TextDisplayTemplate.hxx".}
proc transformedStartingCorner*(this: IGESGraphTextDisplayTemplate): Pnt {.
    noSideEffect, importcpp: "TransformedStartingCorner",
    header: "IGESGraph_TextDisplayTemplate.hxx".}
type
  IGESGraphTextDisplayTemplatebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGraph_TextDisplayTemplate::get_type_name(@)",
                            header: "IGESGraph_TextDisplayTemplate.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_TextDisplayTemplate::get_type_descriptor(@)",
    header: "IGESGraph_TextDisplayTemplate.hxx".}
proc dynamicType*(this: IGESGraphTextDisplayTemplate): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGraph_TextDisplayTemplate.hxx".}

























