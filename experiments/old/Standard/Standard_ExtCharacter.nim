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
## ==== Titre: Standard_ExtCharacter.hxx
## ==== Role : The headr file of primitve type "ExtCharacter" from package
## ====        "Standard"
## ====
## ==== Implementation:  This is a primitive type implemented with typedef
## ====                  Excepting "Unicod encoding"
## ============================================================================

##  ===============
##  inline methods
##  ===============
##  ------------------------------------------------------------------
##  ToExtCharacter : Returns an ExtCharacter from a Character
##  ------------------------------------------------------------------

proc toExtCharacter*(achar: StandardCharacter): StandardExtCharacter =
  discard

##  ------------------------------------------------------------------
##  ToCharacter : Returns an Character from an ExtCharacter
##  ------------------------------------------------------------------

proc toCharacter*(achar: StandardExtCharacter): StandardCharacter =
  discard

##  ------------------------------------------------------------------
##  IsAnAscii : Returns True if an ExtCharacter is in the "Ascii Range"
##  ------------------------------------------------------------------

proc isAnAscii*(achar: StandardExtCharacter): StandardBoolean =
  discard

##  ------------------------------------------------------------------
##  IsEqual : Returns Standard_True if two characters have the same value
##  ------------------------------------------------------------------

proc isEqual*(one: StandardExtCharacter; two: StandardExtCharacter): StandardBoolean =
  discard
