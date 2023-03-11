import occt

# Create the pointer to the object
var aPnt2:HandleCartesianPointObj
var aPnt1 = newPnt(1, 2.2, 3.3)

echo "aPnt1.isNull: ", aPnt1.isNull
echo "aPnt2.isNull: ", aPnt2.isNull
echo "aPnt1: ", aPnt1

aPnt2 = aPnt1
echo "aPnt1.y: ", aPnt1.y
echo "aPnt2.y: ", aPnt2.y

echo "Updating 'y' value in one of the handles:"
aPnt1.y = 5.5
echo "aPnt1.y: ", aPnt1.y
echo "aPnt2.y: ", aPnt2.y

