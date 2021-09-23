##  Created on: 1996-12-24
##  Created by: Yves FRICAUD
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TDF/TDF_LabelMap, TNaming_MapOfNamedShape,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../TDF/TDF_LabelList, ../TopTools/TopTools_IndexedMapOfShape

discard "forward decl of TNaming_Localizer"
discard "forward decl of TNaming_NamedShape"
discard "forward decl of TNaming_OldShapeIterator"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TDF_Label"
discard "forward decl of TNaming_UsedShapes"
type
  TNaming_Tool* {.importcpp: "TNaming_Tool", header: "TNaming_Tool.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## the
                                                                                   ## last
                                                                                   ## Modification
                                                                                   ## of
                                                                                   ## <NS>.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## the
                                                                                   ## shape
                                                                                   ## CurrentShape
                                                                                   ## contained
                                                                                   ## in
                                                                                   ##
                                                                                   ## !
                                                                                   ## the
                                                                                   ## named
                                                                                   ## shape
                                                                                   ## attribute
                                                                                   ## NS.
                                                                                   ##
                                                                                   ## !
                                                                                   ## CurrentShape
                                                                                   ## is
                                                                                   ## the
                                                                                   ## current
                                                                                   ## state
                                                                                   ## of
                                                                                   ## the
                                                                                   ## entities
                                                                                   ##
                                                                                   ## !
                                                                                   ## if
                                                                                   ## they
                                                                                   ## have
                                                                                   ## been
                                                                                   ## modified
                                                                                   ## in
                                                                                   ## other
                                                                                   ## attributes
                                                                                   ## of
                                                                                   ## the
                                                                                   ## same
                                                                                   ## data
                                                                                   ## structure.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Each
                                                                                   ## call
                                                                                   ## to
                                                                                   ## this
                                                                                   ## function
                                                                                   ## creates
                                                                                   ## a
                                                                                   ## new
                                                                                   ## compound.
                                                                                   ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## True
                                                                                   ## if
                                                                                   ## <aShape>
                                                                                   ## appears
                                                                                   ## under
                                                                                   ## a
                                                                                   ## label.


proc CurrentShape*(NS: handle[TNaming_NamedShape]): TopoDS_Shape {.
    importcpp: "TNaming_Tool::CurrentShape(@)", header: "TNaming_Tool.hxx".}
proc CurrentShape*(NS: handle[TNaming_NamedShape]; Updated: TDF_LabelMap): TopoDS_Shape {.
    importcpp: "TNaming_Tool::CurrentShape(@)", header: "TNaming_Tool.hxx".}
proc CurrentNamedShape*(NS: handle[TNaming_NamedShape]; Updated: TDF_LabelMap): handle[
    TNaming_NamedShape] {.importcpp: "TNaming_Tool::CurrentNamedShape(@)",
                         header: "TNaming_Tool.hxx".}
proc CurrentNamedShape*(NS: handle[TNaming_NamedShape]): handle[TNaming_NamedShape] {.
    importcpp: "TNaming_Tool::CurrentNamedShape(@)", header: "TNaming_Tool.hxx".}
proc NamedShape*(aShape: TopoDS_Shape; anAcces: TDF_Label): handle[TNaming_NamedShape] {.
    importcpp: "TNaming_Tool::NamedShape(@)", header: "TNaming_Tool.hxx".}
proc GetShape*(NS: handle[TNaming_NamedShape]): TopoDS_Shape {.
    importcpp: "TNaming_Tool::GetShape(@)", header: "TNaming_Tool.hxx".}
proc OriginalShape*(NS: handle[TNaming_NamedShape]): TopoDS_Shape {.
    importcpp: "TNaming_Tool::OriginalShape(@)", header: "TNaming_Tool.hxx".}
proc GeneratedShape*(S: TopoDS_Shape; Generation: handle[TNaming_NamedShape]): TopoDS_Shape {.
    importcpp: "TNaming_Tool::GeneratedShape(@)", header: "TNaming_Tool.hxx".}
proc Collect*(NS: handle[TNaming_NamedShape]; Labels: var TNaming_MapOfNamedShape;
             OnlyModif: Standard_Boolean = Standard_True) {.
    importcpp: "TNaming_Tool::Collect(@)", header: "TNaming_Tool.hxx".}
proc HasLabel*(access: TDF_Label; aShape: TopoDS_Shape): Standard_Boolean {.
    importcpp: "TNaming_Tool::HasLabel(@)", header: "TNaming_Tool.hxx".}
proc Label*(access: TDF_Label; aShape: TopoDS_Shape; TransDef: var Standard_Integer): TDF_Label {.
    importcpp: "TNaming_Tool::Label(@)", header: "TNaming_Tool.hxx".}
proc InitialShape*(aShape: TopoDS_Shape; anAcces: TDF_Label;
                  Labels: var TDF_LabelList): TopoDS_Shape {.
    importcpp: "TNaming_Tool::InitialShape(@)", header: "TNaming_Tool.hxx".}
proc ValidUntil*(access: TDF_Label; S: TopoDS_Shape): Standard_Integer {.
    importcpp: "TNaming_Tool::ValidUntil(@)", header: "TNaming_Tool.hxx".}
proc FindShape*(Valid: TDF_LabelMap; Forbiden: TDF_LabelMap;
               Arg: handle[TNaming_NamedShape]; S: var TopoDS_Shape) {.
    importcpp: "TNaming_Tool::FindShape(@)", header: "TNaming_Tool.hxx".}