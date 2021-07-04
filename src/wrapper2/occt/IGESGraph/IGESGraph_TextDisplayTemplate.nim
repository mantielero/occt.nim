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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../gp/gp_XYZ, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Boolean

discard "forward decl of IGESGraph_TextFontDef"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESGraph_TextDisplayTemplate"
discard "forward decl of IGESGraph_TextDisplayTemplate"
type
  Handle_IGESGraph_TextDisplayTemplate* = handle[IGESGraph_TextDisplayTemplate]

## ! defines IGES TextDisplayTemplate Entity,
## ! Type <312>, form <0, 1> in package IGESGraph
## !
## ! Used to set parameters for display of information
## ! which has been logically included in another entity
## ! as a parameter value

type
  IGESGraph_TextDisplayTemplate* {.importcpp: "IGESGraph_TextDisplayTemplate",
                                  header: "IGESGraph_TextDisplayTemplate.hxx",
                                  bycopy.} = object of IGESData_IGESEntity


proc constructIGESGraph_TextDisplayTemplate*(): IGESGraph_TextDisplayTemplate {.
    constructor, importcpp: "IGESGraph_TextDisplayTemplate(@)",
    header: "IGESGraph_TextDisplayTemplate.hxx".}
proc Init*(this: var IGESGraph_TextDisplayTemplate; aWidth: Standard_Real;
          aHeight: Standard_Real; aFontCode: Standard_Integer;
          aFontEntity: handle[IGESGraph_TextFontDef]; aSlantAngle: Standard_Real;
          aRotationAngle: Standard_Real; aMirrorFlag: Standard_Integer;
          aRotationFlag: Standard_Integer; aCorner: gp_XYZ) {.importcpp: "Init",
    header: "IGESGraph_TextDisplayTemplate.hxx".}
proc SetIncremental*(this: var IGESGraph_TextDisplayTemplate; mode: Standard_Boolean) {.
    importcpp: "SetIncremental", header: "IGESGraph_TextDisplayTemplate.hxx".}
proc IsIncremental*(this: IGESGraph_TextDisplayTemplate): Standard_Boolean {.
    noSideEffect, importcpp: "IsIncremental",
    header: "IGESGraph_TextDisplayTemplate.hxx".}
proc BoxWidth*(this: IGESGraph_TextDisplayTemplate): Standard_Real {.noSideEffect,
    importcpp: "BoxWidth", header: "IGESGraph_TextDisplayTemplate.hxx".}
proc BoxHeight*(this: IGESGraph_TextDisplayTemplate): Standard_Real {.noSideEffect,
    importcpp: "BoxHeight", header: "IGESGraph_TextDisplayTemplate.hxx".}
proc IsFontEntity*(this: IGESGraph_TextDisplayTemplate): Standard_Boolean {.
    noSideEffect, importcpp: "IsFontEntity",
    header: "IGESGraph_TextDisplayTemplate.hxx".}
proc FontCode*(this: IGESGraph_TextDisplayTemplate): Standard_Integer {.
    noSideEffect, importcpp: "FontCode",
    header: "IGESGraph_TextDisplayTemplate.hxx".}
proc FontEntity*(this: IGESGraph_TextDisplayTemplate): handle[IGESGraph_TextFontDef] {.
    noSideEffect, importcpp: "FontEntity",
    header: "IGESGraph_TextDisplayTemplate.hxx".}
proc SlantAngle*(this: IGESGraph_TextDisplayTemplate): Standard_Real {.noSideEffect,
    importcpp: "SlantAngle", header: "IGESGraph_TextDisplayTemplate.hxx".}
proc RotationAngle*(this: IGESGraph_TextDisplayTemplate): Standard_Real {.
    noSideEffect, importcpp: "RotationAngle",
    header: "IGESGraph_TextDisplayTemplate.hxx".}
proc MirrorFlag*(this: IGESGraph_TextDisplayTemplate): Standard_Integer {.
    noSideEffect, importcpp: "MirrorFlag",
    header: "IGESGraph_TextDisplayTemplate.hxx".}
proc RotateFlag*(this: IGESGraph_TextDisplayTemplate): Standard_Integer {.
    noSideEffect, importcpp: "RotateFlag",
    header: "IGESGraph_TextDisplayTemplate.hxx".}
proc StartingCorner*(this: IGESGraph_TextDisplayTemplate): gp_Pnt {.noSideEffect,
    importcpp: "StartingCorner", header: "IGESGraph_TextDisplayTemplate.hxx".}
proc TransformedStartingCorner*(this: IGESGraph_TextDisplayTemplate): gp_Pnt {.
    noSideEffect, importcpp: "TransformedStartingCorner",
    header: "IGESGraph_TextDisplayTemplate.hxx".}
type
  IGESGraph_TextDisplayTemplatebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGraph_TextDisplayTemplate::get_type_name(@)",
                              header: "IGESGraph_TextDisplayTemplate.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGraph_TextDisplayTemplate::get_type_descriptor(@)",
    header: "IGESGraph_TextDisplayTemplate.hxx".}
proc DynamicType*(this: IGESGraph_TextDisplayTemplate): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESGraph_TextDisplayTemplate.hxx".}