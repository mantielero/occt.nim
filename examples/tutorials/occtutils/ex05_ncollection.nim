import occt

proc main =
  var aList:NCollection_List[int]
  aList &= 1
  aList &= 2
  aList &= 3

  echo "len: ", aList.len
  for i in aList:
    echo i

  assert aList[0] == 1
  assert aList[1] == 2
  assert aList[2] == 3  

main()