##  Created on: 1999-12-30
##  Created by: data exchange team
##  Copyright (c) 1999-1999 Matra Datavision
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
##  Defines common framework for declaration of main/WinMain functions
##  for executbales on UNIX and WNT that extends DRAW Test Harness.
##  In order to create executable in DRAW environment, in the executable
##  the following line should be added:
##  DRAW_MAIN

## !!!Ignored construct:  # Draw_Main_HeaderFile [NewLine] # Draw_Main_HeaderFile [NewLine] # < Standard_TypeDef . hxx > [NewLine] # < Draw_Appli . hxx > [NewLine] # < Standard_PCharacter . hxx > [NewLine] typedef void ( * FDraw_InitAppli ) ( Draw_Interpretor & ) ;
## Error: did not expect [NewLine]!!!

proc drawMain*(argc: int; argv: ptr StandardPCharacter; drawInitAppli: FDrawInitAppli): int {.
    importcpp: "Draw_Main(@)", header: "Draw_Main.hxx".}
##  Declarations of macros DRAW_MAIN to be used in executables instead of explicit main/WinMain

## !!!Ignored construct:  # _WIN32 [NewLine] # < windows . h > [NewLine] Standard_Integer Draw_WinMain ( HINSTANCE hInstance , HINSTANCE hPrevinstance , LPSTR lpCmdLine , Standard_Integer nCmdShow , const FDraw_InitAppli Draw_InitAppli ) ;
## Error: did not expect [NewLine]!!!

##  WinMain() and main()

const
  DRAW_MAIN* = int

proc winMain*(hInstance: Hinstance; hPrevinstance: Hinstance; lpCmdLine: Lpstr;
             nCmdShow: int): Pascal =
  discard

proc main*(argc: cint; argv: ptr cstring): cint =
  discard

## !!!Ignored construct:  [NewLine] # [NewLine]  main() # DRAW_MAIN int main ( Standard_Integer argc , char * argv [ ] ) { return Draw_Main ( argc , argv , Draw_InitAppli ) ; } [NewLine] # [NewLine] # [NewLine]
## Error: did not expect [NewLine]!!!














































