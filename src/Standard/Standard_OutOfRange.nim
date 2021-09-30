##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
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

## !!!Ignored construct:  # _Standard_OutOfRange_HeaderFile [NewLine] # _Standard_OutOfRange_HeaderFile [NewLine] # < Standard_Type . hxx > [NewLine] # < Standard_DefineException . hxx > [NewLine] # < Standard_SStream . hxx > [NewLine] # < Standard_RangeError . hxx > [NewLine] class Standard_OutOfRange ;
## Error: expected ';'!!!

discard "forward decl of Standard_OutOfRange"
type
  HandleStandardOutOfRangeStandardOutOfRange* = Handle[StandardOutOfRange]

## !!!Ignored construct:  # ( defined ( __GNUC__ ) && __GNUC__ > 4 || ( __GNUC__ == 4 && __GNUC_MINOR__ >= 6 ) ) [NewLine]  suppress false-positive warnings produced by GCC optimizer # Standard_OutOfRange_Always_Raise_if ( CONDITION , MESSAGE ) _Pragma ( GCC diagnostic push ) _Pragma ( GCC diagnostic ignored "-Wstrict-overflow" ) if ( CONDITION ) throw Standard_OutOfRange ( MESSAGE ) ;
## Error: expected ';'!!!

## !!!Ignored construct:  _Pragma ( GCC diagnostic pop ) [NewLine] # [NewLine] # Standard_OutOfRange_Always_Raise_if ( CONDITION , MESSAGE ) if ( CONDITION ) throw Standard_OutOfRange ( MESSAGE ) ;
## Error: expected ';'!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # ! defined No_Exception && ! defined No_Standard_OutOfRange [NewLine] # Standard_OutOfRange_Raise_if ( CONDITION , MESSAGE ) Standard_OutOfRange_Always_Raise_if ( CONDITION , MESSAGE ) [NewLine] # [NewLine] # Standard_OutOfRange_Raise_if ( CONDITION , MESSAGE ) [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_OutOfRange , Standard_RangeError ) #  _Standard_OutOfRange_HeaderFile
## Error: did not expect [NewLine]!!!















































