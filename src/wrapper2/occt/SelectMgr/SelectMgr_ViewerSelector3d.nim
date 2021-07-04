##  Created on: 1995-03-15
##  Created by: Robert COUBLANC
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
  ../Graphic3d/Graphic3d_SequenceOfStructure, SelectMgr_ViewerSelector,
  SelectMgr_Selection, ../StdSelect/StdSelect_TypeOfSelectionImage

discard "forward decl of Graphic3d_Structure"
discard "forward decl of Graphic3d_TransformPers"
discard "forward decl of V3d_View"
type
  SelectMgr_ViewerSelector3d* {.importcpp: "SelectMgr_ViewerSelector3d",
                               header: "SelectMgr_ViewerSelector3d.hxx", bycopy.} = object of SelectMgr_ViewerSelector ##
                                                                                                                ## !
                                                                                                                ## Constructs
                                                                                                                ## an
                                                                                                                ## empty
                                                                                                                ## 3D
                                                                                                                ## selector
                                                                                                                ## object.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Displays
                                                                                                                ## sensitives
                                                                                                                ## in
                                                                                                                ## view
                                                                                                                ## <theView>.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Update
                                                                                                                ## z-layers
                                                                                                                ## order
                                                                                                                ## map.
    ## !< list of debug presentations

  SelectMgr_ViewerSelector3dbase_type* = SelectMgr_ViewerSelector

proc get_type_name*(): cstring {.importcpp: "SelectMgr_ViewerSelector3d::get_type_name(@)",
                              header: "SelectMgr_ViewerSelector3d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "SelectMgr_ViewerSelector3d::get_type_descriptor(@)",
    header: "SelectMgr_ViewerSelector3d.hxx".}
proc DynamicType*(this: SelectMgr_ViewerSelector3d): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "SelectMgr_ViewerSelector3d.hxx".}
proc constructSelectMgr_ViewerSelector3d*(): SelectMgr_ViewerSelector3d {.
    constructor, importcpp: "SelectMgr_ViewerSelector3d(@)",
    header: "SelectMgr_ViewerSelector3d.hxx".}
proc Pick*(this: var SelectMgr_ViewerSelector3d; theXPix: Standard_Integer;
          theYPix: Standard_Integer; theView: handle[V3d_View]) {.importcpp: "Pick",
    header: "SelectMgr_ViewerSelector3d.hxx".}
proc Pick*(this: var SelectMgr_ViewerSelector3d; theXPMin: Standard_Integer;
          theYPMin: Standard_Integer; theXPMax: Standard_Integer;
          theYPMax: Standard_Integer; theView: handle[V3d_View]) {.
    importcpp: "Pick", header: "SelectMgr_ViewerSelector3d.hxx".}
proc Pick*(this: var SelectMgr_ViewerSelector3d; thePolyline: TColgp_Array1OfPnt2d;
          theView: handle[V3d_View]) {.importcpp: "Pick",
                                     header: "SelectMgr_ViewerSelector3d.hxx".}
proc ToPixMap*(this: var SelectMgr_ViewerSelector3d; theImage: var Image_PixMap;
              theView: handle[V3d_View]; theType: StdSelect_TypeOfSelectionImage;
              thePickedIndex: Standard_Integer = 1): Standard_Boolean {.
    importcpp: "ToPixMap", header: "SelectMgr_ViewerSelector3d.hxx".}
proc DisplaySensitive*(this: var SelectMgr_ViewerSelector3d;
                      theView: handle[V3d_View]) {.importcpp: "DisplaySensitive",
    header: "SelectMgr_ViewerSelector3d.hxx".}
proc ClearSensitive*(this: var SelectMgr_ViewerSelector3d; theView: handle[V3d_View]) {.
    importcpp: "ClearSensitive", header: "SelectMgr_ViewerSelector3d.hxx".}
proc DisplaySensitive*(this: var SelectMgr_ViewerSelector3d;
                      theSel: handle[SelectMgr_Selection]; theTrsf: gp_Trsf;
                      theView: handle[V3d_View];
                      theToClearOthers: Standard_Boolean = Standard_True) {.
    importcpp: "DisplaySensitive", header: "SelectMgr_ViewerSelector3d.hxx".}
proc DumpJson*(this: SelectMgr_ViewerSelector3d; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_ViewerSelector3d.hxx".}
discard "forward decl of SelectMgr_ViewerSelector3d"
type
  Handle_SelectMgr_ViewerSelector3d* = handle[SelectMgr_ViewerSelector3d]
