
proc myAdd*(x, y: int): int {.cdecl, exportc.} = 
  result = x + y

proc getSomeString*(): cstring {.cdecl, exportc.} =
  result = "Some addition: " & $myAdd(5, 8)
