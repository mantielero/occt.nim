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


proc load*(theDI: var DrawInterpretor; theKey: TCollectionAsciiString;
          theResourceFileName: TCollectionAsciiString;
          theDefaultsDirectory: TCollectionAsciiString;
          theUserDefaultsDirectory: TCollectionAsciiString;
          theIsVerbose: bool = false) {.importcpp: "Draw::Load(@)", header: "Draw.hxx".}
proc set*(name: StandardCString; d: Handle[DrawDrawable3D]; disp: bool) {.
    importcpp: "Draw::Set(@)", header: "Draw.hxx".}
proc set*(name: StandardCString; d: Handle[DrawDrawable3D]) {.
    importcpp: "Draw::Set(@)", header: "Draw.hxx".}
proc set*(name: StandardCString; val: cfloat) {.importcpp: "Draw::Set(@)",
    header: "Draw.hxx".}
proc getInterpretor*(): var DrawInterpretor {.importcpp: "Draw::GetInterpretor(@)",
    header: "Draw.hxx".}
proc get*(theName: var StandardCString): Handle[DrawDrawable3D] {.
    importcpp: "Draw::Get(@)", header: "Draw.hxx".}
proc getExisting*(theName: StandardCString): Handle[DrawDrawable3D] {.
    importcpp: "Draw::GetExisting(@)", header: "Draw.hxx".}
proc get*(name: StandardCString; val: var cfloat): bool {.importcpp: "Draw::Get(@)",
    header: "Draw.hxx".}
proc set*(name: StandardCString; val: StandardCString) {.importcpp: "Draw::Set(@)",
    header: "Draw.hxx".}
proc atof*(name: StandardCString): cfloat {.importcpp: "Draw::Atof(@)",
                                        header: "Draw.hxx".}
proc parseReal*(theExpressionString: StandardCString;
               theParsedRealValue: var cfloat): bool {.
    importcpp: "Draw::ParseReal(@)", header: "Draw.hxx".}
proc atoi*(name: StandardCString): cint {.importcpp: "Draw::Atoi(@)",
                                      header: "Draw.hxx".}
proc parseInteger*(theExpressionString: StandardCString;
                  theParsedIntegerValue: var cint): bool {.
    importcpp: "Draw::ParseInteger(@)", header: "Draw.hxx".}
proc parseColor*(theArgNb: cint; theArgVec: cstringArray;
                theColor: var QuantityColorRGBA): cint {.
    importcpp: "Draw::ParseColor(@)", header: "Draw.hxx".}
proc parseColor*(theArgNb: cint; theArgVec: cstringArray; theColor: var QuantityColor): cint {.
    importcpp: "Draw::ParseColor(@)", header: "Draw.hxx".}
proc parseOnOff*(theArg: StandardCString; theIsOn: var bool): bool {.
    importcpp: "Draw::ParseOnOff(@)", header: "Draw.hxx".}
proc lastPick*(view: var cint; x: var cint; y: var cint; button: var cint) {.
    importcpp: "Draw::LastPick(@)", header: "Draw.hxx".}
proc repaint*() {.importcpp: "Draw::Repaint(@)", header: "Draw.hxx".}
proc setProgressBar*(theProgress: Handle[DrawProgressIndicator]) {.
    importcpp: "Draw::SetProgressBar(@)", header: "Draw.hxx".}
proc getProgressBar*(): Handle[DrawProgressIndicator] {.
    importcpp: "Draw::GetProgressBar(@)", header: "Draw.hxx".}
proc commands*(i: var DrawInterpretor) {.importcpp: "Draw::Commands(@)",
                                     header: "Draw.hxx".}
proc basicCommands*(i: var DrawInterpretor) {.importcpp: "Draw::BasicCommands(@)",
    header: "Draw.hxx".}
proc messageCommands*(i: var DrawInterpretor) {.
    importcpp: "Draw::MessageCommands(@)", header: "Draw.hxx".}
proc variableCommands*(i: var DrawInterpretor) {.
    importcpp: "Draw::VariableCommands(@)", header: "Draw.hxx".}
proc graphicCommands*(i: var DrawInterpretor) {.
    importcpp: "Draw::GraphicCommands(@)", header: "Draw.hxx".}
proc ploadCommands*(i: var DrawInterpretor) {.importcpp: "Draw::PloadCommands(@)",
    header: "Draw.hxx".}
proc unitCommands*(i: var DrawInterpretor) {.importcpp: "Draw::UnitCommands(@)",
    header: "Draw.hxx".}

























