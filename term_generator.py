import sys

if len(sys.argv) == 1:
    print(f"Usage {sys.argv[0]} [depth]")
    sys.exit(1)
depth = int(sys.argv[1])
print(("parent(" * depth) + "parent(robin,test)" +( ")" * depth) + '.')
