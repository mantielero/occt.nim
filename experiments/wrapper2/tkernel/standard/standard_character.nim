when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

##  Copyright (c) 1998-1999 Matra Datavision
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
## ============================================================================
## ==== Titre: Standard_Character.hxx
## ==== Role : The header file of primitve type "Character" from package
## ====        "Standard"
## ====
## ==== Implementation:  This is a primitive type implemented as typedef
## ====        typedef char Standard_Character
## ============================================================================

##  ------------------------------------------------------------------
##  IsEqual : Returns Standard_True if two characters have the same value
##  ------------------------------------------------------------------

proc IsEqual*(One: Standard_Character; Two: Standard_Character): Standard_Boolean {.
    cdecl.} =
  discard

##  ===============================================
##  Character classification functions
##
##  NOTE: Character classification routines in C standard library
##  (isdigit(), isalpha() etc.) have integer argument instead of char.
##  Therefore if character from extended Ascii part of char table
##  (i.e. above 128) is passed into such functions it is converted
##  to int giving negative value (if characters are signed that
##  is default for most compilers).
##  It can be dangerous since implementation of these C functions
##  may use argument as index in the array without any checks
##  (for instance, in Microsoft VC++ -- see MSDN)
##  To avoid this, we cast char to unsigned char when passing to these functions.
##  ===============================================
##  ==================================================================
##  IsAlphabetic : Returns Standard_True if a character is alphabetic
##  ==================================================================

proc IsAlphabetic*(me: Standard_Character): Standard_Boolean {.cdecl.} =
  discard

##  ==================================================================
##  IsDigit : Returns Standard_True if a character is a digit
##  ==================================================================

proc IsDigit*(me: Standard_Character): Standard_Boolean {.cdecl.} =
  discard

##  ==================================================================
##  IsXDigit : Returns Standard_True if a character is a digit
##  ==================================================================

proc IsXDigit*(me: Standard_Character): Standard_Boolean {.cdecl.} =
  discard

##  ==================================================================
##  IsAlphanumeric : Returns Standard_True if a character is alphanumeric
##  ==================================================================

proc IsAlphanumeric*(me: Standard_Character): Standard_Boolean {.cdecl.} =
  discard

##  ==================================================================
##  IsControl : Returns Standard_True if a character  is a control character
##  ==================================================================

proc IsControl*(me: Standard_Character): Standard_Boolean {.cdecl.} =
  discard

##  ==================================================================
##  IsGraphic : Returns Standard_True if a character is graphic
##  ==================================================================

proc IsGraphic*(me: Standard_Character): Standard_Boolean {.cdecl.} =
  discard

##  ==================================================================
##  IsLowerCase : Returns Standard_True if a character is lowercase
##  ==================================================================

proc IsLowerCase*(me: Standard_Character): Standard_Boolean {.cdecl.} =
  discard

##  ==================================================================
##  IsPrintable : Returns Standard_True if a character is printable
##  ==================================================================

proc IsPrintable*(me: Standard_Character): Standard_Boolean {.cdecl.} =
  discard

##  ==================================================================
##  IsPunctuation : Returns Standard_True if a character is a graphic and
##                  not a alphanumeric character
##  ==================================================================

proc IsPunctuation*(me: Standard_Character): Standard_Boolean {.cdecl.} =
  discard

##  ==================================================================
##  IsSpace : Returns Standard_True if a character is a space
##  ==================================================================

proc IsSpace*(me: Standard_Character): Standard_Boolean {.cdecl.} =
  discard

##  ==================================================================
##  IsUppercase : Returns Standard_True if a character is uppercase
##  ==================================================================

proc IsUpperCase*(me: Standard_Character): Standard_Boolean {.cdecl.} =
  discard

##  ==================================================================
##  LowerCase : Returns a lowercase character
##  ==================================================================

proc LowerCase*(me: Standard_Character): Standard_Character {.cdecl,
    importcpp: "LowerCase(@)", dynlib: tkernel.}
##  ==================================================================
##  UpperCase : Returns a uppercase character
##  ==================================================================

proc UpperCase*(me: Standard_Character): Standard_Character {.cdecl,
    importcpp: "UpperCase(@)", dynlib: tkernel.}