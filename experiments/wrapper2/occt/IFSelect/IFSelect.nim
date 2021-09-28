##  Created on: 1992-09-21
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of IFSelect_WorkSession"
discard "forward decl of IFSelect_Signature"
discard "forward decl of IFSelect_SignMultiple"
discard "forward decl of IFSelect_SignType"
discard "forward decl of IFSelect_SignCategory"
discard "forward decl of IFSelect_SignValidity"
discard "forward decl of IFSelect_SignAncestor"
discard "forward decl of IFSelect_ShareOut"
discard "forward decl of IFSelect_AppliedModifiers"
discard "forward decl of IFSelect_ShareOutResult"
discard "forward decl of IFSelect_PacketList"
discard "forward decl of IFSelect_Dispatch"
discard "forward decl of IFSelect_DispGlobal"
discard "forward decl of IFSelect_DispPerOne"
discard "forward decl of IFSelect_DispPerCount"
discard "forward decl of IFSelect_DispPerSignature"
discard "forward decl of IFSelect_DispPerFiles"
discard "forward decl of IFSelect_SelectionIterator"
discard "forward decl of IFSelect_Selection"
discard "forward decl of IFSelect_SelectBase"
discard "forward decl of IFSelect_SelectModelRoots"
discard "forward decl of IFSelect_SelectModelEntities"
discard "forward decl of IFSelect_SelectEntityNumber"
discard "forward decl of IFSelect_SelectPointed"
discard "forward decl of IFSelect_SelectCombine"
discard "forward decl of IFSelect_SelectUnion"
discard "forward decl of IFSelect_SelectIntersection"
discard "forward decl of IFSelect_SelectControl"
discard "forward decl of IFSelect_SelectDiff"
discard "forward decl of IFSelect_SelectDeduct"
discard "forward decl of IFSelect_SelectShared"
discard "forward decl of IFSelect_SelectSharing"
discard "forward decl of IFSelect_SelectAnyList"
discard "forward decl of IFSelect_SelectInList"
discard "forward decl of IFSelect_SelectSuite"
discard "forward decl of IFSelect_SelectExtract"
discard "forward decl of IFSelect_SelectUnknownEntities"
discard "forward decl of IFSelect_SelectErrorEntities"
discard "forward decl of IFSelect_SelectIncorrectEntities"
discard "forward decl of IFSelect_SelectRoots"
discard "forward decl of IFSelect_SelectRootComps"
discard "forward decl of IFSelect_SelectRange"
discard "forward decl of IFSelect_SelectAnyType"
discard "forward decl of IFSelect_SelectType"
discard "forward decl of IFSelect_SelectSignature"
discard "forward decl of IFSelect_SelectFlag"
discard "forward decl of IFSelect_SelectSent"
discard "forward decl of IFSelect_SelectExplore"
discard "forward decl of IFSelect_SelectSignedShared"
discard "forward decl of IFSelect_SelectSignedSharing"
discard "forward decl of IFSelect_IntParam"
discard "forward decl of IFSelect_SignatureList"
discard "forward decl of IFSelect_CheckCounter"
discard "forward decl of IFSelect_SignCounter"
discard "forward decl of IFSelect_GraphCounter"
discard "forward decl of IFSelect_Editor"
discard "forward decl of IFSelect_ParamEditor"
discard "forward decl of IFSelect_EditForm"
discard "forward decl of IFSelect_ListEditor"
discard "forward decl of IFSelect_ContextModif"
discard "forward decl of IFSelect_ContextWrite"
discard "forward decl of IFSelect_Transformer"
discard "forward decl of IFSelect_TransformStandard"
discard "forward decl of IFSelect_ModelCopier"
discard "forward decl of IFSelect_GeneralModifier"
discard "forward decl of IFSelect_Modifier"
discard "forward decl of IFSelect_ModifReorder"
discard "forward decl of IFSelect_ModifEditForm"
discard "forward decl of IFSelect_FileModifier"
discard "forward decl of IFSelect_ModelModifier"
discard "forward decl of IFSelect_WorkSession"
discard "forward decl of IFSelect_WorkLibrary"
discard "forward decl of IFSelect_SessionFile"
discard "forward decl of IFSelect_SessionDumper"
discard "forward decl of IFSelect_BasicDumper"
discard "forward decl of IFSelect_Activator"
discard "forward decl of IFSelect_SessionPilot"
discard "forward decl of IFSelect_Act"
discard "forward decl of IFSelect_Functions"
type
  IFSelect* {.importcpp: "IFSelect", header: "IFSelect.hxx", bycopy.} = object ## ! Saves the state of a
                                                                       ## WorkSession from IFSelect, by using a
                                                                       ## !
                                                                       ## SessionFile from IFSelect. Returns True if Done, False in
                                                                       ## ! case of Error on Writing. <file> gives the name of the File
                                                                       ## ! to be produced (this avoids to export the class
                                                                       ## SessionFile).


proc saveSession*(ws: Handle[IFSelectWorkSession]; file: StandardCString): bool {.
    importcpp: "IFSelect::SaveSession(@)", header: "IFSelect.hxx".}
proc restoreSession*(ws: Handle[IFSelectWorkSession]; file: StandardCString): bool {.
    importcpp: "IFSelect::RestoreSession(@)", header: "IFSelect.hxx".}

























