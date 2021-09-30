##  Created on: 1992-04-06
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

## !!!Ignored construct:  # _IGESData_FileRecognizer_HeaderFile [NewLine] # _IGESData_FileRecognizer_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] class IGESData_IGESEntity ;
## Error: expected ';'!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of IGESData_IGESType"
discard "forward decl of IGESData_FileRecognizer"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( IGESData_FileRecognizer , Standard_Transient ) class IGESData_FileRecognizer : public Standard_Transient { public : ! Evaluates if recognition has a result, returns it if yes
## ! In case of success, Returns True and puts result in "res"
## ! In case of Failure, simply Returns False
## ! Works by calling deferred method Eval, and in case of failure,
## ! looks for Added Recognizers to work Standard_Boolean Evaluate ( const IGESData_IGESType & akey , Handle ( IGESData_IGESEntity ) & res ) ; ! Returns result of last recognition (call of Evaluate) Handle ( IGESData_IGESEntity ) Result ( ) const ; ! Adds a new Recognizer to the Compound, at the end
## ! Several calls to Add work by adding in the order of calls :
## ! Hence, when Eval has failed to recognize, Evaluate will call
## ! Evaluate from the first added Recognizer if there is one,
## ! and to the second if there is still no result, and so on void Add ( const Handle ( IGESData_FileRecognizer ) & reco ) ; public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return IGESData_FileRecognizer ; ( IGESData_FileRecognizer , Standard_Transient ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < IGESData_FileRecognizer > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : ! Assumes that no result has yet been recognized IGESData_FileRecognizer ( ) ; ! Records the result of the recognition. Called by specific
## ! method Eval to record a result : after calling it, Eval has
## ! finished and can return void SetOK ( const Handle ( IGESData_IGESEntity ) & aresult ) ; ! Records that recognition gives no result void SetKO ( ) ; ! THIS METHOD DEFINES THE RECOGNITION PROTOCOL, it is proper to
## ! each precise type of Recognizer
## ! For a suitable type of akey, it calls SetOK(result) where
## ! result is an empty result of appropriate type, then returns virtual void Eval ( const IGESData_IGESType & akey ) = 0 ; private : Handle ( IGESData_IGESEntity ) theres ; Standard_Boolean hasnext ; Handle ( IGESData_FileRecognizer ) thenext ; } ;
## Error: expected ';'!!!














































