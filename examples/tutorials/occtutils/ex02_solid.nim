import occt

proc main =
  var b = box(10, 20, 30)
  echo b.isSolid
  echo typeof(b.solid)  # TopoDS_Solid

  var c = cylinder(10, 100)

  var aCompound = newCompound(b,c)
  #if aCompound.isCompound:
  echo "\n\naCompound:"
  echo "    ", typeof( aCompound )
  echo "    isCompound: ", aCompound.isCompound
  echo "    isSolid: ", aCompound.isSolid
  for solid in aCompound.getSolids:
    echo "    -->", typeof(solid)
  #aCompound.toStep("compound.stp")
  
  var e = b + c
  echo "\n\nFusing two shapes:"
  echo "    ", typeof(e)
  echo "    isCompound: ",e.isCompound
  echo "    isSolid: ", e.isSolid
  for solid in e.getSolids:
    echo "    -->", typeof(solid)
  #e.toStep("solid.stp")


main()