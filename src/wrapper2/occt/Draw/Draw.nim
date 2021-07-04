##  Created on: 1991-04-24
##  Created by: Arnaud BOUZY
##  Copyright (c) 1991-1999 Matra Datavision
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
  Draw_Interpretor, ../Quantity/Quantity_ColorRGBA, ../Standard/Standard_Handle

discard "forward decl of Draw_Drawable3D"
discard "forward decl of Draw_ProgressIndicator"
type
  Draw* {.importcpp: "Draw", header: "Draw.hxx", bycopy.} = object ## ! (Re)Load a Draw Harness plugin.
                                                           ## ! @param theDI  [in] [out] Tcl interpretor to append loaded commands
                                                           ## ! @param theKey [in] plugin code name to be resolved in resource file
                                                           ## ! @param theResourceFileName   [in] description file name
                                                           ## ! @param theDefaultsDirectory  [in] default folder for looking description file
                                                           ## ! @param
                                                           ## theUserDefaultsDirectory [in] user folder for looking description file
                                                           ## ! @param theIsVerbose [in] print verbose messages
                                                           ## ! @name Tcl variables management tools
                                                           ## ! Sets a variable. Display it if <Disp> is true.
                                                           ## ! @name argument parsing tools
                                                           ## ! Converts numeric expression, that can involve DRAW
                                                           ## ! variables, to real value.
                                                           ## ! Returns last graphic selection description.
                                                           ## ! @name methods loading standard command sets
                                                           ## ! Defines all Draw commands
                                                           ## ! Returns a variable value.
                                                           ## ! @param theName [in] [out] variable name, or "." to activate picking
                                                           ## ! @param theToAllowPick [in] when TRUE, "." name will activate picking


proc Load*(theDI: var Draw_Interpretor; theKey: TCollection_AsciiString;
          theResourceFileName: TCollection_AsciiString;
          theDefaultsDirectory: TCollection_AsciiString;
          theUserDefaultsDirectory: TCollection_AsciiString;
          theIsVerbose: Standard_Boolean = Standard_False) {.
    importcpp: "Draw::Load(@)", header: "Draw.hxx".}
proc Set*(Name: Standard_CString; D: handle[Draw_Drawable3D]; Disp: Standard_Boolean) {.
    importcpp: "Draw::Set(@)", header: "Draw.hxx".}
proc Set*(Name: Standard_CString; D: handle[Draw_Drawable3D]) {.
    importcpp: "Draw::Set(@)", header: "Draw.hxx".}
proc Set*(Name: Standard_CString; val: Standard_Real) {.importcpp: "Draw::Set(@)",
    header: "Draw.hxx".}
proc GetInterpretor*(): var Draw_Interpretor {.importcpp: "Draw::GetInterpretor(@)",
    header: "Draw.hxx".}
proc Get*(theName: var Standard_CString): handle[Draw_Drawable3D] {.
    importcpp: "Draw::Get(@)", header: "Draw.hxx".}
proc GetExisting*(theName: Standard_CString): handle[Draw_Drawable3D] {.
    importcpp: "Draw::GetExisting(@)", header: "Draw.hxx".}
proc Get*(Name: Standard_CString; val: var Standard_Real): Standard_Boolean {.
    importcpp: "Draw::Get(@)", header: "Draw.hxx".}
proc Set*(Name: Standard_CString; val: Standard_CString) {.importcpp: "Draw::Set(@)",
    header: "Draw.hxx".}
proc Atof*(Name: Standard_CString): Standard_Real {.importcpp: "Draw::Atof(@)",
    header: "Draw.hxx".}
proc ParseReal*(theExpressionString: Standard_CString;
               theParsedRealValue: var Standard_Real): bool {.
    importcpp: "Draw::ParseReal(@)", header: "Draw.hxx".}
proc Atoi*(Name: Standard_CString): Standard_Integer {.importcpp: "Draw::Atoi(@)",
    header: "Draw.hxx".}
proc ParseInteger*(theExpressionString: Standard_CString;
                  theParsedIntegerValue: var Standard_Integer): bool {.
    importcpp: "Draw::ParseInteger(@)", header: "Draw.hxx".}
proc ParseColor*(theArgNb: Standard_Integer; theArgVec: cstringArray;
                theColor: var Quantity_ColorRGBA): Standard_Integer {.
    importcpp: "Draw::ParseColor(@)", header: "Draw.hxx".}
proc ParseColor*(theArgNb: Standard_Integer; theArgVec: cstringArray;
                theColor: var Quantity_Color): Standard_Integer {.
    importcpp: "Draw::ParseColor(@)", header: "Draw.hxx".}
proc ParseOnOff*(theArg: Standard_CString; theIsOn: var Standard_Boolean): Standard_Boolean {.
    importcpp: "Draw::ParseOnOff(@)", header: "Draw.hxx".}
proc LastPick*(view: var Standard_Integer; X: var Standard_Integer;
              Y: var Standard_Integer; button: var Standard_Integer) {.
    importcpp: "Draw::LastPick(@)", header: "Draw.hxx".}
proc Repaint*() {.importcpp: "Draw::Repaint(@)", header: "Draw.hxx".}
proc SetProgressBar*(theProgress: handle[Draw_ProgressIndicator]) {.
    importcpp: "Draw::SetProgressBar(@)", header: "Draw.hxx".}
proc GetProgressBar*(): handle[Draw_ProgressIndicator] {.
    importcpp: "Draw::GetProgressBar(@)", header: "Draw.hxx".}
proc Commands*(I: var Draw_Interpretor) {.importcpp: "Draw::Commands(@)",
                                      header: "Draw.hxx".}
proc BasicCommands*(I: var Draw_Interpretor) {.importcpp: "Draw::BasicCommands(@)",
    header: "Draw.hxx".}
proc MessageCommands*(I: var Draw_Interpretor) {.
    importcpp: "Draw::MessageCommands(@)", header: "Draw.hxx".}
proc VariableCommands*(I: var Draw_Interpretor) {.
    importcpp: "Draw::VariableCommands(@)", header: "Draw.hxx".}
proc GraphicCommands*(I: var Draw_Interpretor) {.
    importcpp: "Draw::GraphicCommands(@)", header: "Draw.hxx".}
proc PloadCommands*(I: var Draw_Interpretor) {.importcpp: "Draw::PloadCommands(@)",
    header: "Draw.hxx".}
proc UnitCommands*(I: var Draw_Interpretor) {.importcpp: "Draw::UnitCommands(@)",
    header: "Draw.hxx".}