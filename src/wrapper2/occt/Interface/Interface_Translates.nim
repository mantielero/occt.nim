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
##   Interface_Translates.hxx
##   This set of macros provides some simple translation formula, i.e.
##   from a HSequence to an HArray and reverse
##   Include files for the types of HSequence and HArray1 remain to be called
##   Other kinds of translations remain to be completely written
##   from HSequence to HArray1 : creates the HArray1 if HSequence not empty
##   from HArray1 to HSequence : the HSequence must have been already created
##   SeqToArray(seq,arr,TColStd_HArray1OfReal)  will :
##     consider <seq> input HSequence (here, must be TColStd_HSequenceOfReal)
##     consider <arr> output HArray1, declared but to be created
##     do nothing if <seq> is null or empty; else
##     create <arr> as TColStd_HArrayOfReal(1,seq->Length())
##     then fill each value of <arr> with the homologous from <seq>
##   SeqToArrayFrom(seq,arr,TColStd_HArray1OfReal,lowind)  will :
##     consider <lowind> as an Integer (variable or constant) which defines
##     the desired lower index if different from one
##     do the same thing as SeqToArray if <lowind> equates 1
##     else fixes lower index of <arr> as <lowind>
##   SeqToArrayCast(seq,arr,Interface_HArray1OfHAsciiString,TCollection_HAsciiString)  will :
##     do as SeqToArray, but array values are Handles to be casted
##       (if <seq> does not work with the same type, e.g. Standard_Transient)
##     fill array value by the result of DownCast of the type <typent>
##   ArrayToSeq(arr,seq) will fill <seq> a sequence with the items of <arr> a
##   HArray1. <seq> and <arr> are already created (<seq> can be empty or not)
##   Items from <arr> are considered as compatible with items from <seq>
##     (no DownCast required for Handles)

# # # # template seqToArrayFrom*(seq, arr, typarr, lowind: untyped): void =
# # # #   if not seq.isNull():
# # # #     var
# # # #       numseq: StandardInteger
# # # #       lenseq: StandardInteger
# # # #     if lenseq > 0:
# # # #       arr = new(typarr(lowind, lenseq + 1 - lowind))
# # # #       numseq = 1
# # # #       while numseq <= lenseq:
# # # #         arr.setValue(numseq + 1 - lowind, seq.value(numseq))
# # # #         inc(numseq)
# # # # 
# # # # template seqToArray*(seq, arr, typarr: untyped): void =
# # # #   if not seq.isNull():
# # # #     var
# # # #       numseq: StandardInteger
# # # #       lenseq: StandardInteger
# # # #     if lenseq > 0:
# # # #       arr = new(typarr(1, lenseq))
# # # #       numseq = 1
# # # #       while numseq <= lenseq:
# # # #         arr.setValue(numseq, seq.value(numseq))
# # # #         inc(numseq)
# # # # 
# # # # template seqToArrayCast*(seq, arr, typarr, typent: untyped): void =
# # # #   if not seq.isNull():
# # # #     var
# # # #       numseq: StandardInteger
# # # #       lenseq: StandardInteger
# # # #     if lenseq > 0:
# # # #       arr = new(typarr(1, lenseq))
# # # #       numseq = 1
# # # #       while numseq <= lenseq:
# # # #         arr.setValue(numseq, DownCast[Typent](seq.value(numseq)))
# # # #         inc(numseq)
# # # # 
# # # # const
# # # #   ArrayToSeq* = (
# # # #     arr
# # # #     seq)
# # # # 
# # # # var
# # # #   nument: StandardInteger
# # # #   numlow: StandardInteger
# # # #   numup: StandardInteger
# # # # 
# # # # nument = numlow
# # # # while nument <= numup:
# # # #   seq.append(arr.value(nument))
# # # #   inc(nument)
# # # # ## !!!Ignored construct:  [NewLine]
# # # # ## Error: did not expect [NewLine]!!!
# # # # 
# # # 
# # 
# 
# 

