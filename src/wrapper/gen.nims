# tkBRep
exec "nimgen brep.cfg"   # FIXME: BRep_ListIteratorOfListOfCurveRepresentation.hxx, BRep_ListIteratorOfListOfPointRepresentation.hxx
exec "nimgen topods.cfg" # FIXME: TopoDS_ListIteratorOfListOfShape.hxx

# tkGeomBase
exec "nimgen gc.cfg"

# tkMath
exec "nimgen gp.cfg"
exec "nimgen tcolgp.cfg"

# tkPrim
exec "nimgen brepprim.cfg"
exec "nimgen brepprimapi.cfg"

