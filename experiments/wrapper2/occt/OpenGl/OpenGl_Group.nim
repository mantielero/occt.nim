##  Created on: 2011-08-01
##  Created by: Sergey ZERCHANINOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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
  ../Graphic3d/Graphic3d_Group, ../Graphic3d/Graphic3d_Structure,
  ../NCollection/NCollection_List, OpenGl_Aspects, OpenGl_Element

discard "forward decl of OpenGl_Group"
discard "forward decl of OpenGl_Structure"
type
  OpenGl_ElementNode* {.importcpp: "OpenGl_ElementNode",
                       header: "OpenGl_Group.hxx", bycopy.} = object
    elem* {.importc: "elem".}: ptr OpenGl_Element
    next* {.importc: "next".}: ptr OpenGl_ElementNode


## ! Implementation of low-level graphic group.

type
  OpenGl_Group* {.importcpp: "OpenGl_Group", header: "OpenGl_Group.hxx", bycopy.} = object of Graphic3d_Group ##
                                                                                                    ## !
                                                                                                    ## Create
                                                                                                    ## empty
                                                                                                    ## group.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Will
                                                                                                    ## throw
                                                                                                    ## exception
                                                                                                    ## if
                                                                                                    ## not
                                                                                                    ## created
                                                                                                    ## by
                                                                                                    ## OpenGl_Structure.


proc constructOpenGl_Group*(theStruct: handle[Graphic3d_Structure]): OpenGl_Group {.
    constructor, importcpp: "OpenGl_Group(@)", header: "OpenGl_Group.hxx".}
proc Clear*(this: var OpenGl_Group; theToUpdateStructureMgr: Standard_Boolean) {.
    importcpp: "Clear", header: "OpenGl_Group.hxx".}
proc Aspects*(this: OpenGl_Group): handle[Graphic3d_Aspects] {.noSideEffect,
    importcpp: "Aspects", header: "OpenGl_Group.hxx".}
proc SetGroupPrimitivesAspect*(this: var OpenGl_Group;
                              theAspect: handle[Graphic3d_Aspects]) {.
    importcpp: "SetGroupPrimitivesAspect", header: "OpenGl_Group.hxx".}
proc SetPrimitivesAspect*(this: var OpenGl_Group;
                         theAspect: handle[Graphic3d_Aspects]) {.
    importcpp: "SetPrimitivesAspect", header: "OpenGl_Group.hxx".}
proc SynchronizeAspects*(this: var OpenGl_Group) {.importcpp: "SynchronizeAspects",
    header: "OpenGl_Group.hxx".}
proc ReplaceAspects*(this: var OpenGl_Group; theMap: Graphic3d_MapOfAspectsToAspects) {.
    importcpp: "ReplaceAspects", header: "OpenGl_Group.hxx".}
proc AddPrimitiveArray*(this: var OpenGl_Group;
                       theType: Graphic3d_TypeOfPrimitiveArray;
                       theIndices: handle[Graphic3d_IndexBuffer];
                       theAttribs: handle[Graphic3d_Buffer];
                       theBounds: handle[Graphic3d_BoundBuffer];
                       theToEvalMinMax: Standard_Boolean) {.
    importcpp: "AddPrimitiveArray", header: "OpenGl_Group.hxx".}
proc AddText*(this: var OpenGl_Group; theTextParams: handle[Graphic3d_Text];
             theToEvalMinMax: Standard_Boolean) {.importcpp: "AddText",
    header: "OpenGl_Group.hxx".}
proc SetFlippingOptions*(this: var OpenGl_Group; theIsEnabled: Standard_Boolean;
                        theRefPlane: gp_Ax2) {.importcpp: "SetFlippingOptions",
    header: "OpenGl_Group.hxx".}
proc SetStencilTestOptions*(this: var OpenGl_Group; theIsEnabled: Standard_Boolean) {.
    importcpp: "SetStencilTestOptions", header: "OpenGl_Group.hxx".}
proc GlStruct*(this: OpenGl_Group): ptr OpenGl_Structure {.noSideEffect,
    importcpp: "GlStruct", header: "OpenGl_Group.hxx".}
proc AddElement*(this: var OpenGl_Group; theElem: ptr OpenGl_Element) {.
    importcpp: "AddElement", header: "OpenGl_Group.hxx".}
proc Render*(this: OpenGl_Group; theWorkspace: handle[OpenGl_Workspace]) {.
    noSideEffect, importcpp: "Render", header: "OpenGl_Group.hxx".}
proc Release*(this: var OpenGl_Group; theGlCtx: handle[OpenGl_Context]) {.
    importcpp: "Release", header: "OpenGl_Group.hxx".}
proc FirstNode*(this: OpenGl_Group): ptr OpenGl_ElementNode {.noSideEffect,
    importcpp: "FirstNode", header: "OpenGl_Group.hxx".}
proc GlAspects*(this: OpenGl_Group): ptr OpenGl_Aspects {.noSideEffect,
    importcpp: "GlAspects", header: "OpenGl_Group.hxx".}
proc IsRaytracable*(this: OpenGl_Group): Standard_Boolean {.noSideEffect,
    importcpp: "IsRaytracable", header: "OpenGl_Group.hxx".}
proc DumpJson*(this: OpenGl_Group; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_Group.hxx".}
type
  OpenGl_Groupbase_type* = Graphic3d_Group

proc get_type_name*(): cstring {.importcpp: "OpenGl_Group::get_type_name(@)",
                              header: "OpenGl_Group.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_Group::get_type_descriptor(@)", header: "OpenGl_Group.hxx".}
proc DynamicType*(this: OpenGl_Group): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_Group.hxx".}
discard "forward decl of OpenGl_Group"
type
  Handle_OpenGl_Group* = handle[OpenGl_Group]
