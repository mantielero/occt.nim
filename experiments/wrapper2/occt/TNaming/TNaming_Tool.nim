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

discard "forward decl of TNaming_Localizer"
discard "forward decl of TNaming_NamedShape"
discard "forward decl of TNaming_OldShapeIterator"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TDF_Label"
discard "forward decl of TNaming_UsedShapes"
type
  TNamingTool* {.importcpp: "TNaming_Tool", header: "TNaming_Tool.hxx", bycopy.} = object ##
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


proc currentShape*(ns: Handle[TNamingNamedShape]): TopoDS_Shape {.
    importcpp: "TNaming_Tool::CurrentShape(@)", header: "TNaming_Tool.hxx".}
proc currentShape*(ns: Handle[TNamingNamedShape]; updated: TDF_LabelMap): TopoDS_Shape {.
    importcpp: "TNaming_Tool::CurrentShape(@)", header: "TNaming_Tool.hxx".}
proc currentNamedShape*(ns: Handle[TNamingNamedShape]; updated: TDF_LabelMap): Handle[
    TNamingNamedShape] {.importcpp: "TNaming_Tool::CurrentNamedShape(@)",
                        header: "TNaming_Tool.hxx".}
proc currentNamedShape*(ns: Handle[TNamingNamedShape]): Handle[TNamingNamedShape] {.
    importcpp: "TNaming_Tool::CurrentNamedShape(@)", header: "TNaming_Tool.hxx".}
proc namedShape*(aShape: TopoDS_Shape; anAcces: TDF_Label): Handle[TNamingNamedShape] {.
    importcpp: "TNaming_Tool::NamedShape(@)", header: "TNaming_Tool.hxx".}
proc getShape*(ns: Handle[TNamingNamedShape]): TopoDS_Shape {.
    importcpp: "TNaming_Tool::GetShape(@)", header: "TNaming_Tool.hxx".}
proc originalShape*(ns: Handle[TNamingNamedShape]): TopoDS_Shape {.
    importcpp: "TNaming_Tool::OriginalShape(@)", header: "TNaming_Tool.hxx".}
proc generatedShape*(s: TopoDS_Shape; generation: Handle[TNamingNamedShape]): TopoDS_Shape {.
    importcpp: "TNaming_Tool::GeneratedShape(@)", header: "TNaming_Tool.hxx".}
proc collect*(ns: Handle[TNamingNamedShape]; labels: var TNamingMapOfNamedShape;
             onlyModif: bool = true) {.importcpp: "TNaming_Tool::Collect(@)",
                                   header: "TNaming_Tool.hxx".}
proc hasLabel*(access: TDF_Label; aShape: TopoDS_Shape): bool {.
    importcpp: "TNaming_Tool::HasLabel(@)", header: "TNaming_Tool.hxx".}
proc label*(access: TDF_Label; aShape: TopoDS_Shape; transDef: var int): TDF_Label {.
    importcpp: "TNaming_Tool::Label(@)", header: "TNaming_Tool.hxx".}
proc initialShape*(aShape: TopoDS_Shape; anAcces: TDF_Label;
                  labels: var TDF_LabelList): TopoDS_Shape {.
    importcpp: "TNaming_Tool::InitialShape(@)", header: "TNaming_Tool.hxx".}
proc validUntil*(access: TDF_Label; s: TopoDS_Shape): int {.
    importcpp: "TNaming_Tool::ValidUntil(@)", header: "TNaming_Tool.hxx".}
proc findShape*(valid: TDF_LabelMap; forbiden: TDF_LabelMap;
               arg: Handle[TNamingNamedShape]; s: var TopoDS_Shape) {.
    importcpp: "TNaming_Tool::FindShape(@)", header: "TNaming_Tool.hxx".}
