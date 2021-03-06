# -*- coding: utf-8 -*-
"""Iterative_Deepening_Search(IDS).ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1QzWjJye-0WDKA3_Xei47XWGVhf0BHvsE
"""

graph = {
  'A' : ['B','C'],
  'B' : ['D', 'E'],
  'D' : ['H','I'],
  'H' : [],
  'I' : [],
  'E' : ['J','K'],
  'J' : [],
  'K' : [],
  'C' : ['F','G'],
  'F' : ['L','M'],
  'L' : [],
  'M' : [],
  'G' : ['N','O'],
  'N' : [],
  'O' : []
}
path = list()

def DFS(currentNode,destination,graph,maxDepth,curList):
  print("Checking for destination",currentNode)
  curList.append(currentNode)
  if currentNode==destination:
    return True
  if maxDepth<=0:
    path.append(curList)
    return False
  for node in graph[currentNode]:
    if DFS(node,destination,graph,maxDepth-1,curList):
      return True
    else:
      curList.pop()
  return False

def iterativeDDFS(currentNode,destination,graph,maxDepth):
  for i in range(maxDepth):
    curList = list()
    if DFS(currentNode,destination,graph,i,curList):
      return True
  return False

if not iterativeDDFS('A','O',graph,4):
  print("Path is not available")
else:
  print("A path exists")
  print(path.pop())