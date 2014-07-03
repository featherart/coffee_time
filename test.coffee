console.log "hi"

foods = ['toast', 'figs', 'crumpets', 'pie']

for food in foods # replaces for loop
  if food isnt 'pie'
    console.log food 
  if food is 'pie'
    console.log food
    
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
things = ['monster', 'sailor', 'rumpus', 'bonfire', 'salmon']

start = things[1..2] # range

console.log start

middle = things[1..3] # inclusive
otherMiddle = things[1...2] # exclusive

console.log middle

some = things[-2..] #slice

console.log some

globals = (name for name of window)[0...10] # window has globals

console.log "here are globals #{globals}"

# creating objects, so simple!
class Animal
  constructor: (@name) ->

  move: (meters) ->
    console.log @name + " moved #{meters}m."
    
  sound: (sound) ->
    console.log @name + " gave a mighty #{sound}."

class Snake extends Animal
  move: ->
    console.log "Slithering..."
    super 5

class Horse extends Animal
  move: ->
    console.log "Galloping..."
    super 45

sam = new Snake "Sammy the Python"
tom = new Horse "Tommy the Palomino"

sam.move()
tom.move()
tom.sound("Neigh!!")
sam.sound("SSSSSSssss")
