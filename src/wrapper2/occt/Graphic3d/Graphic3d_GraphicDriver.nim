##  Created on: 1997-01-28
##  Created by: CAL
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Boolean, ../Standard/Standard_Transient, Graphic3d_CView,
  Graphic3d_CStructure, ../Aspect/Aspect_GradientFillMethod,
  ../Standard/Standard_CString, ../Aspect/Aspect_FillMethod,
  ../Standard/Standard_Size, ../Quantity/Quantity_NameOfColor,
  ../Standard/Standard_Real, ../Aspect/Aspect_TypeOfTriedronPosition,
  Graphic3d_GraduatedTrihedron, Graphic3d_Vec3, ../Standard/Standard_ShortReal,
  ../Standard/Standard_Address, ../Image/Image_PixMap, Graphic3d_BufferType,
  ../Aspect/Aspect_GenId, ../Aspect/Aspect_Handle, Graphic3d_ZLayerId,
  Graphic3d_ZLayerSettings, Graphic3d_MapOfZLayerSettings, Graphic3d_CLight,
  Graphic3d_TypeOfLimit, ../TColStd/TColStd_Array2OfReal,
  ../TColStd/TColStd_MapOfInteger, ../TColStd/TColStd_SequenceOfInteger

discard "forward decl of Aspect_DisplayConnection"
discard "forward decl of Graphic3d_CView"
discard "forward decl of Graphic3d_GraphicDriver"
discard "forward decl of Graphic3d_Layer"
discard "forward decl of Graphic3d_TransformError"
discard "forward decl of Graphic3d_Structure"
discard "forward decl of Graphic3d_StructureManager"
discard "forward decl of Graphic3d_ViewManager"
discard "forward decl of Quantity_Color"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Graphic3d_GraphicDriver"
type
  Handle_Graphic3d_GraphicDriver* = handle[Graphic3d_GraphicDriver]

## ! This class allows the definition of a graphic driver
## ! for 3d interface (currently only OpenGl driver is used).

type
  Graphic3d_GraphicDriver* {.importcpp: "Graphic3d_GraphicDriver",
                            header: "Graphic3d_GraphicDriver.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Request
                                                                                                    ## limit
                                                                                                    ## of
                                                                                                    ## graphic
                                                                                                    ## resource
                                                                                                    ## of
                                                                                                    ## specific
                                                                                                    ## type.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## new
                                                                                                    ## empty
                                                                                                    ## graphic
                                                                                                    ## structure
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Initializes
                                                                                                    ## the
                                                                                                    ## Driver

  Graphic3d_GraphicDriverbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_GraphicDriver::get_type_name(@)",
                              header: "Graphic3d_GraphicDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_GraphicDriver::get_type_descriptor(@)",
    header: "Graphic3d_GraphicDriver.hxx".}
proc DynamicType*(this: Graphic3d_GraphicDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_GraphicDriver.hxx".}
proc InquireLimit*(this: Graphic3d_GraphicDriver; theType: Graphic3d_TypeOfLimit): Standard_Integer {.
    noSideEffect, importcpp: "InquireLimit", header: "Graphic3d_GraphicDriver.hxx".}
proc InquireLightLimit*(this: Graphic3d_GraphicDriver): Standard_Integer {.
    noSideEffect, importcpp: "InquireLightLimit",
    header: "Graphic3d_GraphicDriver.hxx".}
proc InquirePlaneLimit*(this: Graphic3d_GraphicDriver): Standard_Integer {.
    noSideEffect, importcpp: "InquirePlaneLimit",
    header: "Graphic3d_GraphicDriver.hxx".}
proc InquireViewLimit*(this: Graphic3d_GraphicDriver): Standard_Integer {.
    noSideEffect, importcpp: "InquireViewLimit",
    header: "Graphic3d_GraphicDriver.hxx".}
proc CreateStructure*(this: var Graphic3d_GraphicDriver;
                     theManager: handle[Graphic3d_StructureManager]): handle[
    Graphic3d_CStructure] {.importcpp: "CreateStructure",
                           header: "Graphic3d_GraphicDriver.hxx".}
proc RemoveStructure*(this: var Graphic3d_GraphicDriver;
                     theCStructure: var handle[Graphic3d_CStructure]) {.
    importcpp: "RemoveStructure", header: "Graphic3d_GraphicDriver.hxx".}
proc CreateView*(this: var Graphic3d_GraphicDriver;
                theMgr: handle[Graphic3d_StructureManager]): handle[
    Graphic3d_CView] {.importcpp: "CreateView",
                      header: "Graphic3d_GraphicDriver.hxx".}
proc RemoveView*(this: var Graphic3d_GraphicDriver; theView: handle[Graphic3d_CView]) {.
    importcpp: "RemoveView", header: "Graphic3d_GraphicDriver.hxx".}
proc EnableVBO*(this: var Graphic3d_GraphicDriver; status: Standard_Boolean) {.
    importcpp: "EnableVBO", header: "Graphic3d_GraphicDriver.hxx".}
proc MemoryInfo*(this: Graphic3d_GraphicDriver; theFreeBytes: var Standard_Size;
                theInfo: var TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "MemoryInfo", header: "Graphic3d_GraphicDriver.hxx".}
proc DefaultTextHeight*(this: Graphic3d_GraphicDriver): Standard_ShortReal {.
    noSideEffect, importcpp: "DefaultTextHeight",
    header: "Graphic3d_GraphicDriver.hxx".}
proc TextSize*(this: Graphic3d_GraphicDriver; theView: handle[Graphic3d_CView];
              theText: Standard_CString; theHeight: Standard_ShortReal;
              theWidth: var Standard_ShortReal; theAscent: var Standard_ShortReal;
              theDescent: var Standard_ShortReal) {.noSideEffect,
    importcpp: "TextSize", header: "Graphic3d_GraphicDriver.hxx".}
proc InsertLayerBefore*(this: var Graphic3d_GraphicDriver;
                       theNewLayerId: Graphic3d_ZLayerId;
                       theSettings: Graphic3d_ZLayerSettings;
                       theLayerAfter: Graphic3d_ZLayerId) {.
    importcpp: "InsertLayerBefore", header: "Graphic3d_GraphicDriver.hxx".}
proc InsertLayerAfter*(this: var Graphic3d_GraphicDriver;
                      theNewLayerId: Graphic3d_ZLayerId;
                      theSettings: Graphic3d_ZLayerSettings;
                      theLayerBefore: Graphic3d_ZLayerId) {.
    importcpp: "InsertLayerAfter", header: "Graphic3d_GraphicDriver.hxx".}
proc RemoveZLayer*(this: var Graphic3d_GraphicDriver; theLayerId: Graphic3d_ZLayerId) {.
    importcpp: "RemoveZLayer", header: "Graphic3d_GraphicDriver.hxx".}
proc ZLayers*(this: Graphic3d_GraphicDriver;
             theLayerSeq: var TColStd_SequenceOfInteger) {.noSideEffect,
    importcpp: "ZLayers", header: "Graphic3d_GraphicDriver.hxx".}
proc SetZLayerSettings*(this: var Graphic3d_GraphicDriver;
                       theLayerId: Graphic3d_ZLayerId;
                       theSettings: Graphic3d_ZLayerSettings) {.
    importcpp: "SetZLayerSettings", header: "Graphic3d_GraphicDriver.hxx".}
proc ZLayerSettings*(this: Graphic3d_GraphicDriver; theLayerId: Graphic3d_ZLayerId): Graphic3d_ZLayerSettings {.
    noSideEffect, importcpp: "ZLayerSettings",
    header: "Graphic3d_GraphicDriver.hxx".}
proc ViewExists*(this: var Graphic3d_GraphicDriver;
                theWindow: handle[Aspect_Window];
                theView: var handle[Graphic3d_CView]): Standard_Boolean {.
    importcpp: "ViewExists", header: "Graphic3d_GraphicDriver.hxx".}
proc GetDisplayConnection*(this: Graphic3d_GraphicDriver): handle[
    Aspect_DisplayConnection] {.noSideEffect, importcpp: "GetDisplayConnection",
                               header: "Graphic3d_GraphicDriver.hxx".}
proc NewIdentification*(this: var Graphic3d_GraphicDriver): Standard_Integer {.
    importcpp: "NewIdentification", header: "Graphic3d_GraphicDriver.hxx".}
proc RemoveIdentification*(this: var Graphic3d_GraphicDriver;
                          theId: Standard_Integer) {.
    importcpp: "RemoveIdentification", header: "Graphic3d_GraphicDriver.hxx".}
proc DumpJson*(this: Graphic3d_GraphicDriver; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_GraphicDriver.hxx".}